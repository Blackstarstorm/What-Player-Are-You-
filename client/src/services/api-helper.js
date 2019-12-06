import axios from 'axios';
const api = axios.create({
  baseURL: "http://localhost:3000"
})

// ============== Auth ================
export const registerUser = async (registerData) => {
  try {
    const resp = await api.post('/users', { user: registerData });
    api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`
    localStorage.setItem('authToken', resp.data.token);
    return resp.data.user
  }
  catch (err) {
    return { error: "Invalid credentials" }
  }
}
export const loginUser = async (loginData) => {
  try {
    const resp = await api.post('/auth/login', loginData);
    api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`;
    localStorage.setItem('authToken', resp.data.token);
    return resp.data.user;
  }
  catch (err) {
    return { error: "Invalid credentials" }
  }
}
export const verifyUser = async () => {
  const token = localStorage.getItem('authToken');
  if (token) {
    api.defaults.headers.common.authorization = `Bearer ${token}`;
    const resp = await api.get('/auth/verify');
    return resp.data;
  }
  return false;
}
//========Game Genre=====//
export const getAllGameGenres = async () => {
  const resp = await api.get('/game_genres');
  return resp.data;
}

export const getOneGameGenre = async (id) => {
  const resp = await api.get(`/game_genres/${id}`);
  return resp.data;
}
//======== Game Facts=================//
export const getGameGenreFacts = async (id) => {
  const resp = await api.get(`/game_genres/${id}/genre_facts`);
  return resp.data;
}
//========Game Title Image =============//

export const getGameGenreImage = async (id) => {
  const resp = await api.get(`/game_genres/${id}/genre_images`);
  return resp.data;
}
//========CRUD GAMES=====//

export const getAllGames = async () => {
  const resp = await api.get('/games');
  return resp.data;
}

export const getGenreGames = async (id) => {
  const resp = await api.get(`/game_genres/${id}/games`);
  return resp.data;
}

export const postGenreGame = async (gameData) => {
  const resp = await api.post(`/game_genres/`, gameData);
  return resp.data;
}

export const putGenreGame = async (id, gameData) => {
  const resp = await api.put(`/game_genres/${id}/games`, gameData);
  return resp.data;
}

export const deleteGenreGame = async (id) => {
  const resp = await api.delete(`/game_genres/${id}/games`);
  return resp.data;
}