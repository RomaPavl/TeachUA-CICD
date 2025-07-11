import React, { useState } from 'react';
import { Layout, Modal } from 'antd';
import MapContainer from "./MapContainer";
import Cities from "./Cities";
import Categories from "./Categories";
import MapClubList from "./MapClubList";
import { mapSearchParameters, searchParameters} from "../../context/SearchContext";
import './css/Sider.css'

const { Sider } = Layout;


const MapComponent = ({ visible, setVisible, cityName}) => {
    const [mapClubs, setMapClubs] = useState([]);
    const [selected, setSelected] = useState(null);
    const [location, setLocation] = useState(null);
    const [zoom, setZoom] = useState(10);
    const [center, setCenter] = useState(null);

    const closeMap = () => {
        mapSearchParameters.cityName = searchParameters.cityName;
        mapSearchParameters.categoryName = "";

        setVisible(false);
    };

    return (
        <Modal
            centered
            open={visible}
            onOk={() => closeMap()}
            onCancel={() => closeMap()}
            width={1200}
            footer={null}
            className='map-modal'
        >
            <Layout className="map-layout">
                <Sider className='mapSider' width={342}>
                    <div className="selectBlock">
                        <Cities setMapClubs={setMapClubs} setZoom={setZoom} setCenter={setCenter} />
                        <Categories setMapClubs={setMapClubs} />
                    </div>
                    <MapClubList mapClubs={mapClubs}
                        setMapClubs={setMapClubs}
                        setZoom={setZoom}
                        setSelected={setSelected}
                        setCenter={setCenter}
                    />
                </Sider>
                <MapContainer mapClubs={mapClubs}
                    zoom={zoom}
                    location={location}
                    setLocation={setLocation}
                    setZoom={setZoom}
                    selected={selected}
                    setSelected={setSelected}
                    center={center}
                    setCenter={setCenter}
                />
            </Layout>
        </Modal>
    )
}

export default MapComponent;