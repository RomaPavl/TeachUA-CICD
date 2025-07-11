import {BASE_URL} from "./config/ApiConfig";
import fetchRequest from "./FetchRequest";

export const searchQuestions = async (pageNumber, size, sortField, sortDirection, query, type, category) => {
    return await fetchRequest
        .get(BASE_URL + "/api/questions/search"
                + "?page=" + (pageNumber - 1) // pagination starts with 0
                + "&size=" + size
                + "&sort=" + sortField + "," + sortDirection
                + "&query=" + query
                + "&type=" + type
                + "&category=" + category
        ).then((response) => {
            return response;
        });
}

export const getQuestionTypes = async () => {
    return await fetchRequest
        .get(BASE_URL + "/api/questions/types")
        .then((response) => {
            return response;
        })
}

export const getQuestionCategories = async () => {
    return await fetchRequest
        .get(BASE_URL + "/api/questions/categories")
        .then((response) => {
            return response;
        })
}

export const getQuestionById = async (id) => {
    return await fetchRequest
        .get(BASE_URL + "/api/questions/" + id)
        .then((response) => {
            return response;
        })
}

export const createQuestion = async (question) => {
    return await fetchRequest
        .post(BASE_URL + "/api/questions/new", question)
        .then((response) => {
            return response;
        })
}

export const updateQuestion = async (id, question) => {
    return await fetchRequest
        .put(BASE_URL + "/api/questions/" + id, question)
        .then((response) => {
            return response;
        })
}

export const deleteQuestion = async (id) => {
    return await fetchRequest
        .delete(BASE_URL + "/api/questions/" + id)
        .then((response) => {
            return response;
        })
}

export const searchCategories = async (pageNumber, size, sortField, sortDirection, query) => {
    return await fetchRequest
        .get(BASE_URL + "/api/questions/categories/search"
                + "?page=" + (pageNumber - 1) // pagination starts with 0
                + "&size=" + size
                + "&sort=" + sortField + "," + sortDirection
                + "&query=" + query
        ).then((response) => {
            return response;
        });
}

export const createCategory = async (category) => {
    return await fetchRequest
        .post(BASE_URL + "/api/question_categories/", category)
        .then((response) => {
            return response;
        })
}

export const updateCategory = async (id, category) => {
    return await fetchRequest
        .put(BASE_URL + "/api/question_categories/" + id, category)
        .then((response) => {
            return response;
        })
}

export const deleteCategory = async (id) => {
    return await fetchRequest
        .delete(BASE_URL + "/api/question_categories/" + id)
        .then((response) => {
            return response;
        })
}

export const searchTypes = async (pageNumber, size, sortField, sortDirection, query) => {
    return await fetchRequest
        .get(BASE_URL + "/api/questions_types/search"
            + "?page=" + (pageNumber - 1) // pagination starts with 0
            + "&size=" + size
            + "&sort=" + sortField + "," + sortDirection
            + "&query=" + query
        ).then((response) => {
            return response;
        });
}

export const createType = async (category) => {
    return await fetchRequest
        .post(BASE_URL + "/api/question_types", category)
        .then((response) => {
            return response;
        })
}

export const updateType = async (id, category) => {
    return await fetchRequest
        .put(BASE_URL + "/api/question_types/" + id, category)
        .then((response) => {
            return response;
        })
}

export const deleteType = async (id) => {
    return await fetchRequest
        .delete(BASE_URL + "/api/question_types/" + id)
        .then((response) => {
            return response;
        })
}
