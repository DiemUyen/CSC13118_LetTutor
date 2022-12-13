class Endpoints {
  // Auth
  static const register = '/auth/register';
  static const login = '/auth/login';
  static const verifyAccount = '/auth/verifyAccount';
  static const refreshToken = '/auth/refresh-token';
  static const forgotPassword = '/user/forgotPassword';

  // Tutor
  static const listTutor = '/tutor/more';
  static const writeReview = '/user/feedbackTutor';
  static const tutorInformation = '/tutor';
  static const searchTutor = '/tutor/search';
  static const addFavoriteTutor = '/user/manageFavoriteTutor';

  // User
  static const changePassword = '/auth/change-password';
  static const userInformation = '/user/info';
}
