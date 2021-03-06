import React from 'react';
import { selectAllFollows } from '../../../reducers/selectors';
import { Link } from 'react-router-dom';

class Follower extends React.Component {
  constructor(props) {
    super(props);

  }

  render () {
    const followers = selectAllFollows(this.props.user.followers);
    let UserFollowers;
    if (followers) {
      UserFollowers = followers.map( (follower) => {

        const followRender = () => {
          if(follower) {
            if(Object.keys(this.props.user.followees).includes(follower.id.toString())) {
              return (<button className="following-button following-on-follow" onClick={() => this.props.deleteFollow(follower.id).then(() => this.props.fetchUser(this.props.user.username))}>Following</button>);
            }
            return (<button className="follow-button follow-on-follow" onClick={() => this.props.addFollow(follower.id).then(() => this.props.fetchUser(this.props.user.username))}>Follow</button>);
          }
        };

        return (
          <li key={follower.id}>
            <div className="FollowModalBody">

              <div className="AFollow">
                <div className="followUser">
                  <Link to={`${follower.username}`} onClick={() => this.props.closeModal()}>
                    <img className="profile-pic edit-profile-pic" src={follower.photo_url}/>
                  </Link>
                  <div className="followNames">
                    <Link className="followUsernameLink" to={`${follower.username}`} onClick={() => this.props.closeModal()}>
                      <div className="followUsername">{follower.username}</div>
                    </Link>
                    <div className="followName">{follower.name}</div>
                  </div>
                </div>
                {followRender()}
              </div>
            </div>
          </li>
        );
      });
    }
    return (
      <section className="FollowModal" onClick={(e) => e.stopPropagation()}>
        <div className="FollowHeading">Followers</div>
        <ul>
          {UserFollowers}
        </ul>
      </section>

    );
  }
}

export default Follower;
