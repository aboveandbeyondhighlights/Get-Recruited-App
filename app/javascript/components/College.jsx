import React, { Component } from 'react';
import { Container, Header } from 'semantic-ui-react';

class College extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { college } = this.props;
    return (
      <Container>
        <Header as='h1'>{college.name}</Header>
        <p>Location: {college.city}, {college.state}</p>
        <p>Conference: {college.conference}</p>
        <p>Division: {college.division}</p>
        <p>Nickname: {college.nickname}</p>
        <p>Governing Body: {college.governing_body}</p>
      </Container>
    );
  }
}

export default College;
