import React from "react";
import "./css/AddCategory.css";
import {addCategory} from "../../../service/CategoryService";
import {Button, Form, Input, message, Upload} from "antd";
import {addToTable} from "../../../util/TableUtil";
import {UPLOAD_IMAGE_URL} from "../../../service/config/ApiConfig";
import UploadOutlined from "@ant-design/icons/lib/icons/UploadOutlined";
import {tokenToHeader} from "../../../service/UploadService";

const AddCategory = ({categories, setCategories, setAddCategory}) => {

    const [categoryForm] = Form.useForm();

    const onFinish = (values) => {
        addCategory(values)
            .then((response) => {
                if (response.status) {
                    message.warning(response.message);
                    return;
                }

                message.success("Категорія '" + response.name + "' успішно додана!");

                setCategories(addToTable(categories, response));
                categoryForm.resetFields();
                setAddCategory(response);
            });
    };

    return (
        <div className="add-category-type">
            <Form className="add-category-type"
                  name="basic"
                  requiredMark={false}
                  onFinish={onFinish}
                  form={categoryForm}>
                <Form.Item name="sortby"
                           rules={[{
                               required: true,
                               message: "Введіть число для сортування"
                           }]}>
                    <Input className="add-category-type-input"
                           placeholder="Sort by"  >
                    </Input>
                </Form.Item>
                <Form.Item name="name"
                           rules={[{
                               required: true,
                               message: "Введіть назву категорії"
                           }]}>
                    <Input className="add-category-type-input"
                           placeholder="Назва категорії">
                    </Input>
                </Form.Item>
                <Form.Item name="description"
                           rules={[{
                               required: true,
                               message: "Введіть опис категорії"
                           }]}>
                    <Input className="add-category-type-input"
                           placeholder="Опис категорії">
                    </Input>
                </Form.Item>
                <Form.Item name="urlLogo"
                           rules={[{
                               required: true,
                               message: "Завантажте лого"
                           }]}>
                    <Upload
                        name="image"
                        action={UPLOAD_IMAGE_URL}
                        maxCount={1}
                        data={{folder: `categories`}}
                        headers={{contentType: 'multipart/form-data', Authorization: tokenToHeader()}}>
                        <span className="add-category-upload"><UploadOutlined className="icon" />Завантажити</span>
                    </Upload>
                </Form.Item>
                <Form.Item name="backgroundColor"
                           rules={[{
                               required: true,
                               message: "Введіть Background Color"
                           }]}>
                    <div>
                        <Input type="color" name="head" defaultValue="#FA8C16"/>
                        <label for="head">Background Color</label>
                    </div>
                </Form.Item>
                <Form.Item name="tagBackgroundColor"
                           rules={[{
                               required: true,
                               message: "Введіть Tag Background Color"
                           }]}>
                    <div>
                        <Input type="color" name="head" defaultValue="#FA8C16"/>
                        <label htmlFor="head">Tag Background Color</label>
                    </div>
                </Form.Item>
                <Form.Item name="tagTextColor"
                           rules={[{
                               required: true,
                               message: "Введіть Tag Text Color"
                           }]}>
                    <div>
                        <Input type="color" name="head" defaultValue="#FA8C16"/>
                        <label htmlFor="head">Tag Text Color</label>
                    </div>
                </Form.Item>
                <Button htmlType="submit" className="flooded-button add-contact-type-button">Додати категорію</Button>
            </Form>
        </div>
    );
};

export default AddCategory;