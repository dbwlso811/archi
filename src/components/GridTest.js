import React from 'react';
import { Row, Col,  Button} from 'antd';

import 'antd/dist/antd.css';
import '../index.css'


const styles = {
    lineRow: {
        border: '1px solid blue',
        height: '100px',
        padding: '4px'

    },
    lineCol: {
        border: '1px solid red',
        padding: '4px'
    }
}

const GridTest = () => {


    return (
        <div>
            <span className="my">test</span>
            <Row
                justify={"end"}
                style={styles.lineRow}
            >
                <Col
                    span={4}
                    style={styles.lineCol}
                >
                    <Button>왼쪽1</Button>

                </Col>
                <Col
                    span={20}
                    style={styles.lineCol}>
                    <Button>오른쪽1</Button>

                </Col>
            </Row>

        </div>
    );
};

export default GridTest;