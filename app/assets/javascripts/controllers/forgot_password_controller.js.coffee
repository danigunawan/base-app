@baseControllers.controller "ForgotPasswordCtrl", [
  "$scope"
  "userService"
  ($scope, userService) ->
    $scope.requestPasswordReset = ->
      promise = userService.requestPasswordReset($scope.login.user_email)
      promise.success (data, status, headers, config) ->
        $scope.success = true
      promise.error (data, status, headers, config) ->
        if data.errors
          $scope.all_errors = data.errors
]