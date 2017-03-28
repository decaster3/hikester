class AllEvents extends React.Component {
  constructor(props) {
    super(props);
  }
  render () {
    var events = this.props.events.map((event) => {
      return (
        <div key={event.id}>
          <h3>{event.name}</h3>
        </div>
     );
   });
    return <div>{events}</div>;
  }
}
