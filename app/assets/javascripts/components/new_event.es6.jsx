class NewEvents extends React.Component {

  handleClick(){
    var name = this.refs.name.value;
    $.ajax({
      url: '/api/v1/events',
      type: 'POST',
      data: {event: {name: name}},
      success: (event) => {
         this.props.handleSubmit(event);
      }
    });
  }
  render () {
    return <div>
              <input ref='name' placeholder='enter your name' />
              <button onClick={this.handleClick.bind(this)}> Submit </button>
           </div>;
  }
}
