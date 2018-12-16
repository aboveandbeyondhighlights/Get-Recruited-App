import React, { Component} from 'react';
import { Menu, Container } from 'semantic-ui-react';

const fixedMenuStyle = {
  backgroundColor: '#fff',
  border: '1px solid #ddd',
  boxShadow: '0px 3px 5px rgba(0, 0, 0, 0.2)',
  marginBottom: '50px',
}

class Navigation extends Component {
  constructor(props) {
    super(props);
    this.state = {};
    this.handleItemClick = this.handleItemClick.bind(this);
  }

  handleItemClick(name) {
    this.setState({ activeItem: name });
  }

  render() {
    const { activeItem } = this.state;
    return (
      <Menu stackable style={fixedMenuStyle}>
        <Container>
          <Menu.Item>
            GETRECRUITED
          </Menu.Item>

          <Menu.Menu position="right">
            <Menu.Item
              as="a"
              name="players"
              active={activeItem === 'players'}
              position="right"
              onClick={() => this.handleItemClick}
            >
              Players
            </Menu.Item>

            <Menu.Item
              as="a"
              name="blog"
              active={activeItem === 'blog'}
              position="right"
              onClick={this.handleItemClick}
            >
              Blog
            </Menu.Item>

            <Menu.Item
              as="a"
              name="resources"
              active={activeItem === 'resources'}
              position="right"
              onClick={this.handleItemClick}
            >
              Resources
            </Menu.Item>
          </Menu.Menu>
        </Container>
      </Menu>
    );
  }
}

export default Navigation;
