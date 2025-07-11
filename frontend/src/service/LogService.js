import { BASE_URL } from './config/ApiConfig'
import fetchRequest from './FetchRequest'

export const getAllLogs = async () => {
    return await fetchRequest.get(`${BASE_URL}/api/logs`)
}

export const getLogByName = async (params) => {
    return await fetchRequest.get(`${BASE_URL}/api/logs/${params}`)
}

export const downloadLogByName = async ({fileName}) => {
    const response = await fetchRequest.get(
        `${BASE_URL}/api/logs/${fileName}/download`,
        {
            method: 'get',
            responseType: 'blob',
        }
    )
    const url = window.URL.createObjectURL(new Blob([response.data]))
    const link = document.createElement('a')
    link.href = url
    link.setAttribute('download', fileName)
    document.body.appendChild(link)
    link.click()
    link.remove()
}

export const deleteLogByName = async (params) => {
    return await fetchRequest.delete(`${BASE_URL}/api/logs/${params}`)
}
