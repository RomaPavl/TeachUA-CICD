import {ConfigProvider, Layout, Pagination, Space} from "antd";
import React, {useEffect, useState} from "react";
import {getCenterClubsByCenterId} from "../../../service/CenterService";
import Loader from "../../Loader";
import {withRouter} from "react-router-dom";
import ClubListItem from "../../clubList/ClubListItem";


const ClubsOfCenterList = ({centerId, load, setLoad, match, clubsPerPage}) => {
    const [clubs, setClubs] = useState({
        content: [],
        pageable: {},
        size: 0,
        totalElements: 0
    });

    const [page, setPage] = useState(0);

    const getData = (currPage) => {
        //setLoad(true);

        getCenterClubsByCenterId(centerId, currPage, clubsPerPage).then(response => {
            setClubs(response);
            //setLoad(false);
        });
    };


    useEffect(() => {
        getData(page);
    }, []);

    const onPageChange = (currPage) => {
        setPage(currPage - 1);
        getData(currPage - 1);
    };

    const onClubClick = () => {
    };


    return load ? <Loader/> : (
        <ConfigProvider
            theme={{
                components: {
                    Pagination: {
                        colorPrimary: '#fff',
                        colorPrimaryHover: '#fff',
                    },
                },
            }}>
            <div className="test">
                <Layout className="user-clubs">
                    <Space wrap className="cards" size={[0, 0]}>
                        {clubs.content.map((club, index) =>
                            <ClubListItem club={club} onClubClick={onClubClick}/>)
                        }
                    </Space>
                    <Pagination className="user-clubs-pagination"
                                hideOnSinglePage
                                showSizeChanger={false}
                                onChange={onPageChange}
                                current={page + 1}
                                pageSize={clubs.size}
                                total={clubs.totalElements}/>
                </Layout>
            </div>
        </ConfigProvider>
    )

}


export default withRouter(ClubsOfCenterList);

