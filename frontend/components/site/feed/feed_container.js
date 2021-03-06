import { connect } from 'react-redux';
import { fetchFeedPhotos } from '../../../actions/photo_actions';
import Feed from './feed';
import { fetchUser } from '../../../actions/user_actions';
import { addLike, deleteLike, addFeedLike, deleteFeedLike } from '../../../actions/like_actions';
import { deleteFeedComment } from '../../../actions/comment_actions';
import { removeFeed, updateCurrentUser } from '../../../actions/session_actions';

const mapStateToProps = (state, ownProps) => {
  return ({
    feed: state.feed,
    currentUsername: state.session.currentUser.username,
    followees: state.session.currentUser.followees_count,
    currentUser: state.session.currentUser,
  });
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchFeedPhotos: (start, end) => dispatch(fetchFeedPhotos(start, end)),
    fetchUser: (user) => dispatch(fetchUser(user)),
    addFeedLike: (like) => dispatch(addFeedLike(like)),
    deleteFeedLike: (like) => dispatch(deleteFeedLike(like)),
    deleteFeedComment: (comment_id) => dispatch(deleteFeedComment(comment_id)),
    removeFeed: () => dispatch(removeFeed()),
    updateCurrentUser: user => dispatch(updateCurrentUser(user)),
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Feed);
