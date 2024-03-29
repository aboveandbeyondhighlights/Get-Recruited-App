import React, { Component } from 'react';
import { Container, Header, Card, Icon, Image } from 'semantic-ui-react';

class CollegeList extends Component {
  constructor(props) {
    super(props);
  }


  render() {
    const { colleges } = this.props;

    return (
      <React.Fragment>
        <Container>
          <Header as="h1">Colleges</Header>
          <Card.Group>
            {colleges.map((college) => {
              return(
                <Card>
                  <Image src='/images/avatar/large/matthew.png' />
                  <Card.Content>
                    <a href={`http://localhost:5000/colleges/${college.id}`}>
                      <Card.Header>{college.name}</Card.Header>
                    </a>
                    <Card.Meta>
                      <span className='date'>City: {college.city}</span>
                    </Card.Meta>
                    <Card.Meta>
                      <span className='date'>State: {college.state}</span>
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

export default CollegeList;

