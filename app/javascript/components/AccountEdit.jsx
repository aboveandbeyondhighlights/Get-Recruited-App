import React, { Component } from 'react';
import { Button, Checkbox, Form } from 'semantic-ui-react'

class AccountEdit extends Component {
  constructor(props) {
    super(props);

    this.handleFirstNameChange = this.handleFirstNameChange.bind(this);

    this.state = {
      firstName: props.firstName,
      lastName: props.lastName,
      foot: props.foot,
      highschool: props.highschool,
      age: props.age,
      graduationYear: props.graduationYear,
      birthday: props.birthday,
      highschoolGoals: props.highschoolGoals,
      highschoolAssists: props.highschoolAssists,
      highschoolPosition: props.highschoolPosition,
      state: props.state,
      city: props.city,
      streetAddress: props.streetAddress,
      phoneNumber: props.phoneNumber,
      clubName: props.clubName,
      clubGoals: props.clubGoals,
      clubAssists: props.clubAssists,
      clubPosition: props.clubPosition,
      height: props.height,
      weight: props.weight,
      highlightVideoLink: props.highlightVideoLink,
      fullGameLink: props.fullGameLink,
      satScore: props.satScore,
      actScore: props.actScore,
    };
  }

  handleFirstNameChange(event) {
    this.setState({ firstName: event.target.value });
  }

  handleLastNameChange(event) {
    this.setState({ lastName: event.target.value });
  }

  handleFootChange(event) {
    this.setState({ foot: event.target.value });
  }

  handleHighschoolChange(event) {
    this.setState({ highschool: event.target.value });
  }

  handleAgeChange(event) {
    this.setState({ age: event.target.value });
  }

  handleGraduationYearChange(event) {
    this.setState({ graduationYear: event.target.value });
  }

  handleBirthdayChange(event) {
    this.setState({ birthday: event.target.value });
  }

  handleHighschoolGoalsChange(event) {
    this.setState({ highschoolGoals: event.target.value });
  }

  handleHighschoolPositionChange(event) {
    this.setState({ highschoolPosition: event.target.value });
  }

  handleHighschoolAssistsChange(event) {
    this.setState({ highschoolAssists: event.target.value });
  }

  handleStateChange(event) {
    this.setState({ state: event.target.value });
  }

  handleCityChange(event) {
    this.setState({ city: event.target.value });
  }

  handleStreetAddressChange(event) {
    this.setState({ streetAddress: event.target.value });
  }

  handlePhoneNumberChange(event) {
    this.setState({ phoneNumber: event.target.value });
  }

  handleClubNameChange(event) {
    this.setState({ clubName: event.target.value });
  }

  handleClubGoalsChange(event) {
    this.setState({ clubGoals: event.target.value });
  }

  handleClubAssistsChange(event) {
    this.setState({ clubAssists: event.target.value });
  }

  handleClubPositionChange(event) {
    this.setState({ clubPosition: event.target.value });
  }

  handleHeightChange(event) {
    this.setState({ height: event.target.value });
  }

  handleWeightChange(event) {
    this.setState({ weight: event.target.value });
  }

  handleHighlightVideoLinkChange(event) {
    this.setState({ highlightVideoLink: event.target.value });
  }

  handleFullGameLinkChange(event) {
    this.setState({ fullGameLink: event.target.value });
  }

  handleActScoreChange(event) {
    this.setState({ actScore: event.target.value });
  }

  handleSatScoreChange(event) {
    this.setState({ satScore: event.target.value });
  }

  handleSubmit() {
    let data = {
      first_name: this.state.firstName,
      last_name: this.state.lastName,
      age: this.state.age,
      height: this.state.height,
      weight: this.state.weight,
      graduation_year: this.state.graduationYear,
      birthday: this.state.birthday,
      highschool_goals: this.state.highschoolGoals,
      highschool_assists: this.state.highschoolAssists,
      highschool: this.state.highschool,
      highschool_position: this.state.highschoolPosition,
      state: this.state.state,
      city: this.state.city,
      street_address: this.state.streetAddress,
      phone_number: this.state.phoneNumber,
      club_name: this.state.clubName,
      club_position: this.state.clubPosition,
      club_goals: this.state.clubGoals,
      club_assists: this.state.clubAssists,
      foot: this.state.foot,
      sat_score: this.state.satScore,
      act_score: this.state.actScore,
      highlight_video_link: this.state.highlightVideoLink,
      full_game_link: this.state.fullGameLink,
    }

    fetch('http://localhost:5000', {
      method: 'POST',
      body: JSON.stringify(data),
      headers: {
        'Content-Type': 'application/json'
      }
    })
      .then(res => res.json())
      .then(response => console.log('success', JSON.stringify(response)))
      .catch(error => console.error('Error:', error));
  }

  render() {
    return (
      <Form>
        <Form.Field>
          <label>First Name</label>
          <input
            placeholder='First Name'
            value={this.handleFirstNameChange}
          />
        </Form.Field>
        <Form.Field>
          <label>Last Name</label>
          <input
            placeholder='Last Name'
            value={this.handleLastNameChange}
          />
        </Form.Field>
        <Form.Field>
          <label>Age</label>
          <input
            placeholder='Age'
            value={this.handleAgeChange}
          />
        </Form.Field>
        <Button
          type='submit'
          onSubmit={this.handleSubmit}
        >Submit
        </Button>
      </Form>
    );
  }
}

export default AccountEdit;
