import React from 'react';
import { selectAllImages } from '../../../reducers/selectors';
import { Link } from 'react-router-dom';
import CommentFeedContainer from '../comment/comment_feed_container';
import { selectAllComments } from '../../../reducers/selectors';
import InfiniteScroll from 'react-infinite-scroll';
import feddIndexItem from './feed_index_item';

class Feed extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      liking: false,
      start: 0,
      end: -1,
      endingIndex: 4,
    };

    this.setState = this.setState.bind(this);
    this.fetchMorePhotos = this.fetchMorePhotos.bind(this);
    this.followButton = this.followButton.bind(this);
    this.photoIsLiked = this.photoIsLiked.bind(this);
    this.likeOrLikes = this.likeOrLikes.bind(this);
  }

  componentDidMount () {
    window.bottom = false;
    window.addEventListener("scroll", this.fetchMorePhotos);
    this.props.fetchFeedPhotos(this.state.start, this.state.end);
  }

  componentWillUnmount() {
    window.removeEventListener("scroll", this.fetchMorePhotos);
    this.props.removeFeed();
  }

  fetchMorePhotos() {
    $(window).scroll(function() {
      if ($(window).scrollTop() <= $(document).height() - $(window).height() && $(window).scrollTop() >= $(document).height() - $(window).height() - 200) {
       window.bottom = true;
     }
    });
    if(window.bottom) {
      this.setState({endingIndex: this.state.endingIndex + 5});
      window.bottom = false;
    }
  }

  followButton(photo) {
    if(photo.liked) {
      return (
        <button className="liked" onClick={ () => this.props.deleteFeedLike(photo.like_id)
          }>
          <i className="fa fa-heart" aria-hidden="true"></i>
        </button>
      );
    } else {
      return (
        <button className="like-button" onClick={ () => this.props.addFeedLike(photo.id)
          }>
          <i className="fa fa-heart-o" aria-hidden="true"></i>
        </button>
      );
    }
  }

  photoIsLiked(photo) {
    if (photo.liked) {
      return this.props.deleteFeedLike(photo.like_id)
      .then(() => setTimeout( () => this.setState({liking: false}), 1000));
    } else {
      return this.props.addFeedLike(photo.id)
      .then(() => setTimeout( () => this.setState({liking: false}), 1000));
    }
  }

  likeOrLikes(photo) {
    if(photo) {
      if (photo.like_count === 1) {
        return "like";
      } else {
        return "likes";
      }
    }
  }

  render () {
    const feed = selectAllImages(this.props.feed).reverse()
    .slice(0, this.state.endingIndex);

    if (this.props.followees !== 0) {
      if (feed.length === 0) {
        return(
          <div className="progress-bar"></div>
        );
      }
    }

    let FeedPhotos;
    if (feed) {
      FeedPhotos = feed.map( (photo) => {
        const likeButton = () => {
          return this.followButton(photo);
        };

        const photoLiked = () => {
          return this.photoIsLiked(photo);
        };

        const likeOrLikes = () => {
          return this.likeOrLikes(photo);
        };

        const comments = selectAllComments(photo.comments);
        let allPhotoComments;
        if (comments) {
          allPhotoComments = comments.map( (comment) => {

            const deleteCommentIcon = () => {
              if (this.props.username === comment.username) {
                return (
                  <button
                    className="delete-comment">
                    <i
                      onClick={() => this.props.deleteFeedComment(comment.id)}
                      className="fa fa-times"
                      aria-hidden="true">
                    </i>
                  </button>
                );
              } else {
                return (
                  <div></div>
                );
              }
            };

            return (
              <li key={comment.id} className="comment-item">
                <div className="comment-username-and-comment">
                  <Link className="username-link-caption username-feed"
                    to={`/users/${comment.username}`}>{comment.username}
                  </Link>
                  {comment.body}
                </div>
                {deleteCommentIcon()}
              </li>
            );
          });
        }

        const heartClass = this.state.liking ? "fa fa-heart feedLike liking" : "fa fa-heart feedLike";
        return (
          <li className="photo-wrap" key={photo.id}>
            <div className="photoFeedImage">
              <div className="photoFeedHeader">
                <Link to={`/users/${photo.username}`}><img className="user-profile-pic photoFeedProfilePic" src={photo.profile_pic}/></Link>
                <Link to={`/users/${photo.username}`} className="photoFeedUsername">{photo.username}</Link>
              </div>
              <div className="feedHeart"><i className={heartClass} aria-hidden="true"></i></div>
              <img className="photo-on-feed" src={photo.images_url} onDoubleClick={ () => {this.setState({liking: true}); photoLiked();}}/>
              <div className="bottom bottom-feed">
                <section className="like-comment">
                  {likeButton()}
                  <button className="comment-button" onClick={() => {document.getElementById(`${photo.id}`).focus();}}>
                    <i className="fa fa-comment-o" aria-hidden="true"></i>
                  </button>
                </section>
                <div className="num-of-like-on-photo like-on-feed">
                  {photo.like_count} {likeOrLikes()}
                </div>
                <div>
                  <div className="caption">
                    <p>
                      <Link className="username-link-caption username-feed"
                        to={`/users/${photo.username}`}>{photo.username}
                      </Link>
                      <span className="photo-caption">
                        {photo.caption}
                      </span>
                    </p>
                  </div>
                  <div className="comments-wrapper">
                    <p>
                      <span className="comments">
                        <ul>
                          {allPhotoComments}
                        </ul>
                      </span>
                    </p>
                  </div>
                </div>
                <div className="uploadedAt">
                  <span className="day days-ago">
                    {photo.daysAgo} ago
                  </span>
                </div>
                <section className="photo-comment-form">
                  <CommentFeedContainer photoId={photo.id} />
                </section>
              </div>
            </div>
          </li>
        );
      });
    }

    return (
      <section>
        <div>
          <ul>
            {FeedPhotos}
          </ul>
        </div>
      </section>
    );
  }
}


export default Feed;
