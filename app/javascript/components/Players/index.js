import React, { Component } from 'react';
import { Container, Header, Card, Icon, Image } from 'semantic-ui-react';

class Players extends Component {
  render() {
    return (
      <React.Fragment>
        <Container>
          <Header as="h1">Players</Header>
          <Card>
            <Image src='/images/avatar/large/matthew.png' />
            <Card.Content>
              <Card.Header>Matthew</Card.Header>
              <Card.Meta>
                <span className='date'>Joined in 2015</span>
              </Card.Meta>
              <Card.Description>Matthew is a musician living in Nashville.</Card.Description>
            </Card.Content>
            <Card.Content extra>
              <a>
                <Icon name='user' />
                22 Friends
              </a>
            </Card.Content>
          </Card>
        </Container>
      </React.Fragment>
    );
  }
}
export default Players;
