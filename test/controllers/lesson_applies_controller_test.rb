require 'test_helper'

class LessonAppliesControllerTest < ActionController::TestCase
  setup do
    @lesson_apply = lesson_applies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_applies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_apply" do
    assert_difference('LessonApply.count') do
      post :create, lesson_apply: { lesson_id: @lesson_apply.lesson_id, student_id: @lesson_apply.student_id }
    end

    assert_redirected_to lesson_apply_path(assigns(:lesson_apply))
  end

  test "should show lesson_apply" do
    get :show, id: @lesson_apply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_apply
    assert_response :success
  end

  test "should update lesson_apply" do
    patch :update, id: @lesson_apply, lesson_apply: { lesson_id: @lesson_apply.lesson_id, student_id: @lesson_apply.student_id }
    assert_redirected_to lesson_apply_path(assigns(:lesson_apply))
  end

  test "should destroy lesson_apply" do
    assert_difference('LessonApply.count', -1) do
      delete :destroy, id: @lesson_apply
    end

    assert_redirected_to lesson_applies_path
  end
end
