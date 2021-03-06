import React from 'react';
import Site from './site/site';
import SignupFormContainer from './session/signup_form_container';
import LoginFormContainer from './session/login_form_container';
import { Route, Switch } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import ModalContainer from './modal/modal_container';
import Footer from './site/footer/footer';

const App = () => (
  <div>
    <ModalContainer />
    <section className="main-content">
      <Switch>
        <ProtectedRoute exact path="/" component={Site} />
        <ProtectedRoute exact path="/users/:id" component={Site} />
        <ProtectedRoute exact path="/users/:id/edit" component={Site} />
        <ProtectedRoute exact path="/users/:id/explore" component={Site}/>
        <AuthRoute exact path="/signup" component={SignupFormContainer} />
        <AuthRoute exact path="/login" component={LoginFormContainer} />
      </Switch>
    </section>
    <Footer/>
  </div>
);

export default App;
