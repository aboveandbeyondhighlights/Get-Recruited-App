import React, { Component } from 'react';
import { Container, Header, Card, Icon, Image } from 'semantic-ui-react';

class Players extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { players } = this.props;

    return (
      <React.Fragment>
        <Container>
          <Header as="h1">Players</Header>
          <Card.Group>
            { players.map((player) => {
              return(
                <Card>
                  <Image src='/images/avatar/large/matthew.png' />
                  <Card.Content>
                    <Card.Header>{player.first_name} {player.last_name}</Card.Header>
                    <Card.Meta>
                      <span className='date'>Graduation Year: {player.graduation_year}</span>
                    </Card.Meta>
                    <Card.Meta>
                      <span className='date'>Position: {player.highschool_position}</span>
                    </Card.Meta>
                  </Card.Content>
                </Card>
              );
            })}
          </Card.Group>
        </Container>
      </React.Fragment>
    );
  }
}
export default Players;
