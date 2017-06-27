import React from 'react';

class CreatePhoto extends React.Component {
  constructor(props) {
    super(props);

    this.state = ({
      caption: "",
      imageFile: null,
      imageUrul: null
    });

    this.updateFile = this.updateFile.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleCancel = this.handleCancel.bind(this);
    this.updateCaption = this.updateCaption.bind(this);
  }

  // componentDidMount () {
  //   this.props.receiveCurrentUser(this.props.state.session.currentUser);
  // }

  // componentWillReceiveProps() {
  //   this.props.fetchUser(this.props.state.user);
  // }

  updateCaption (e) {
    this.setState({
      caption: e.target.value
    });
  }

  updateFile (e) {
    let file = e.currentTarget.files[0];
    let fileReader = new FileReader();
    fileReader.onloadend = function() {
      this.setState({imageFile: file, imageUrl: fileReader.result });
    }.bind(this);

    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  handleSubmit (e) {
    let formData = new FormData();
    formData.append("photo[caption]", this.state.caption);
    formData.append("photo[image]", this.state.imageFile);
    this.props.uploadPhoto(formData)
    .then(() => this.props.closeModal())
    .then(() => this.props.fetchUser(this.props.username))
    .then(() => this.props.history.push(`/users/${this.props.username}`));
  }

  handleCancel (e) {
    return this.props.closeModal();
  }


  render () {
    return (
      <div className="uploadModal" onClick={(e) => e.stopPropagation()}>
        <div className="uploadForm">
          <span className="uploadHeader">
            Upload an Image!
          </span>
          <img className="imagePrev" src={ this.state.imageUrl } />
          <input className="uploadFile" type="file" onChange={this.updateFile} />
          <input className="captionUpload" type="text" placeholder="Caption" onChange={this.updateCaption} />
          <div className="buttons">
            <button className="uploadFormButton" onClick={this.handleSubmit}>Upload Image!</button>
            <button className="uploadFormCancel" onClick={this.handleCancel}>Cancel</button>
          </div>
        </div>
      </div>
    );
  }
}

export default CreatePhoto;
