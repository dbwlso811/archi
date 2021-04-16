import React, {useEffect} from 'react';

import { Row,
    Col,
    Divider,
    DatePicker,
    Table,
    Tag,
    Space,
    Cascader,
    Button,
    Switch
} from 'antd';
import 'antd/dist/antd.css';
import './App.css';

import fn from './util'


function App() {
    let posts ='bank1';

    const options = [
        {
            value: 'zhejiang',
            label: 'Zhejiang',

        },
        {
            value: 'jiangsu',
            label: 'Jiangsu',

        },
    ];

    function onChange(value) {
        console.log(value);
    }

    //switch
    function onChange(checked) {
        console.log(`switch to ${checked}`);
    }




  return (
    <div className="App">
        {/*header*/}
        <header>
            <h1>logo</h1>
            <div className="site-button-ghost-wrapper"><Button ghost>Default</Button></div>
            <Button style={{display:"none"}} type="primary" onClick={() => {alert(fn())}}>1112</Button>
        </header>
        {/* -header */}

        {/*body section*/}
        <div className="main">
            {/*바디상단*/}
            <section className="container_top">
                <div className="balance-totals">
                    <div className="content">
                        {/*md 이상버전에서 상단*/}
                        <Row className="mobile-hide">
                            <Col md={8}>
                                <div className="balance">
                                    {/* 1 */}
                                    <lable className="supply">Collateral Balance</lable>
                                    <div className="headline">
                                        <span>$</span>
                                        <span>0</span>
                                    </div>
                                </div>
                            </Col>
                            <Col md={8}>
                                <div className="apy_box">
                                    <span>Net APY</span>
                                    <span>0.00%</span>
                                </div>
                            </Col>
                            <Col md={8}>
                                <div className="balance">
                                    {/* 1 */}
                                    <lable className="supply">Collateral Balance</lable>
                                    <div className="headline">
                                        <span>$</span>
                                        <span>0</span>
                                    </div>
                                </div>
                            </Col>

                        </Row>
                        {/*m 버전에서 상단*/}
                        <Row className="mobile-only">
                            <Col xs={12}>
                                <div className="apy_box">
                                    <span>Net APY</span>
                                    <span>0.00%</span>
                                </div>
                            </Col>
                            <Col xs={12}>
                                <div className="balance">
                                    {/* 1 */}
                                    <lable className="supply">Collateral Balance</lable>
                                    <div className="headline">
                                        <span>$</span>
                                        <span>0</span>
                                    </div>
                                    {/* 2 */}
                                    <lable className="borrow">Borrow Balance</lable>
                                    <div className="headline">
                                        <span>$</span>
                                        <span>0</span>
                                    </div>
                                </div>
                            </Col>
                        </Row>
                    </div>
                    {/* bar */}
                    <div className="limit-bar">
                        <label></label>
                        <div></div>
                        <label></label>
                    </div>
                </div>
            </section>
            {/*-바디상단*/}

            {/*container*/}
            <section className="container">
                <div className="container_large">
                    <div className="markets_box">
                        {/*1 박스*/}
                        <div>
                            <div className="markets_1">
                                <div className="markets_header">
                                    <h4>Supply Markets</h4>
                                </div>
                                <div className="markets_list">
                                    {/*상단 레이블*/}
                                    <Row className="markets_lable">
                                        <Col md={{ span:6 }}><lable>asset</lable></Col>
                                        <Col md={{ span:6 }}><lable>apy</lable></Col>
                                        <Col md={{ span:6 }}><lable>wallet</lable></Col>
                                        <Col md={{ span:6 }}><lable>collateral</lable></Col>
                                    </Row>
                                    <div className="assets">
                                        {/*세부 리스트*/}
                                        <a className="asset">
                                            <Row>
                                                <Col md={{ span:6 }} style={{display:"flex"}}>
                                                    <span className="icon">icon</span>
                                                    <div className="balance">
                                                        <div>Basic Attention...</div>
                                                        <span>0.00%</span>
                                                    </div>
                                                </Col>
                                                <Col md={{ span:6 }}>
                                                    <div className="balance">
                                                        <div>0.00%</div>
                                                    </div>
                                                </Col>
                                                <Col md={{ span:6 }}>
                                                    <div className="balance">
                                                        <div>0 BAT</div>
                                                    </div>
                                                </Col>
                                                <Col md={{ span:6 }}>
                                                    <div className="balance">
                                                        {/*switch*/}
                                                        <div>
                                                            <Switch defaultChecked onChange={onChange} />
                                                        </div>
                                                    </div>
                                                </Col>
                                            </Row>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {/*2 박스*/}
                        <Col></Col>
                    </div>
                </div>
            </section>
            {/* -container*/}
        </div>
        {/* -body section*/}

        {/* footer*/}
        <footer>
            <div></div>
            <div>
                <div>latest block:</div>
                <Row justify="space-between">
                    <Col>Markets</Col>
                    <Col span={4}>Govemance</Col>
                    <Col span={4}>COMP</Col>
                    <Col span={4}>Support</Col>
                    <Col span={4}>Terms</Col>
                </Row>
                <ul>
                    <li>
                        <Cascader options={options} onChange={onChange} placeholder="Please select" />
                    </li>
                    <li>
                        <Cascader options={options} onChange={onChange} placeholder="Please select" />
                    </li>
                </ul>
            </div>
        </footer>
        {/* - footer*/}
    </div>
  );
}


export const c1 = '';

export default App;
