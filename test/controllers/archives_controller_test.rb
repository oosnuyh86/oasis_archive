require 'test_helper'

class ArchivesControllerTest < ActionController::TestCase
  setup do
    @archive = archives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archive" do
    assert_difference('Archive.count') do
      post :create, archive: { description: @archive.description, doc_id: @archive.doc_id, english_doc: @archive.english_doc, keyword_1: @archive.keyword_1, keyword_2: @archive.keyword_2, keyword_3: @archive.keyword_3, korean_doc: @archive.korean_doc, release: @archive.release, source_id: @archive.source_id, title: @archive.title, translator_id: @archive.translator_id }
    end

    assert_redirected_to archive_path(assigns(:archive))
  end

  test "should show archive" do
    get :show, id: @archive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archive
    assert_response :success
  end

  test "should update archive" do
    patch :update, id: @archive, archive: { description: @archive.description, doc_id: @archive.doc_id, english_doc: @archive.english_doc, keyword_1: @archive.keyword_1, keyword_2: @archive.keyword_2, keyword_3: @archive.keyword_3, korean_doc: @archive.korean_doc, release: @archive.release, source_id: @archive.source_id, title: @archive.title, translator_id: @archive.translator_id }
    assert_redirected_to archive_path(assigns(:archive))
  end

  test "should destroy archive" do
    assert_difference('Archive.count', -1) do
      delete :destroy, id: @archive
    end

    assert_redirected_to archives_path
  end
end
