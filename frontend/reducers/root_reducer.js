import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import UserReducer from './user_reducer';
import ModalReducer from './modal_reducer';
import PhotoReducer from './photo_reducer';
import FeedReducer from './feed_reducer';
import SearchReducer from './search_reducer';
import UsersReducer from './users_reducer';

const rootReducer = combineReducers({
  session: SessionReducer,
  user: UserReducer,
  modal: ModalReducer,
  photo: PhotoReducer,
  feed: FeedReducer,
  search: SearchReducer,
  users: UsersReducer,
});

export default rootReducer;
