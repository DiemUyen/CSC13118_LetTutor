class Endpoints {
  // Auth
  static const register = '/auth/register';
  static const login = '/auth/login';
  static const verifyAccount = '/auth/verifyAccount';
  static const refreshToken = '/auth/refresh-token';
  static const forgotPassword = '/user/forgotPassword';
  static const loginWithGoogle = '/auth/google';
  static const loginWithFacebook = '/auth/facebook';

  // Tutor
  static const listTutor = '/tutor/more';
  static const writeReview = '/user/feedbackTutor';
  static const tutorInformation = '/tutor';
  static const searchTutor = '/tutor/search';
  static const addFavoriteTutor = '/user/manageFavoriteTutor';
  static const getLearnTopics = '/learn-topic';
  static const getTestPreparations = '/test-preparation';
  static const getCategory = '/category';
  static const report = '/report';
  static const getFeedbacks = '/feedback/v2';

  // Schedule
  static const getOwnSchedule = '/schedule';
  static const getTutorSchedule = '/schedule';
  static const getBookedClass = '/booking/list/student';
  static const bookClass = '/booking';
  static const cancelBookClass = '/booking';
  static const updateStudentRequest = '/booking/student-request';

  // Course
  static const listCourses = '/course';
  static const detailCourse = '/course';
  static const contentCategory = '/content-category';

  // User
  static const changePassword = '/auth/change-password';
  static const userInformation = '/user/info';
  static const getTotalCall = '/call/total';
  static const getUpcomingClass = '/booking/next';
}
