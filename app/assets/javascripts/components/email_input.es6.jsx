class EmailInput extends React.Component {
  render () {
    return (
      <div>
      	<div class="form-group">
      		<label class="control-label" for="email">Email</label>
      			<input onChange=changeState() value="" class="form-control" name="email" id="email" type="email">
      	</div>
      	<SubmissionList value={this.state}/>
      </	>
    );
  }
  changeState() {
  	var state = this.setState({value: 'email test'})
  }
}

EmailInput.propTypes = {
  email: React.PropTypes.string
};
