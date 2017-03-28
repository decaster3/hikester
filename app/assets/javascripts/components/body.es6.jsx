class Body extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      events: []
    }
  }

  componentDidMount(){
    $.getJSON('/api/v1/events.json',
    (response) =>
    {this.setState({events: response }) });
  }

  handleSubmit(event) {
   var newState = this.state.events.concat(event);
   console.log(newState);
   this.setState({ events: newState })
 }

  render () {
    return <div>
             <NewEvents handleSubmit = {this.handleSubmit.bind(this)} />
            <AllEvents events = {this.state.events}/>
           </div>;
         }
}
