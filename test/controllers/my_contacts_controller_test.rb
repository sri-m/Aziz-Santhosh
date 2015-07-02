require 'test_helper'

class MyContactsControllerTest < ActionController::TestCase
  setup do
    @my_contact = my_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_contact" do
    assert_difference('MyContact.count') do
      post :create, my_contact: { address: @my_contact.address, cell: @my_contact.cell, email: @my_contact.email, name: @my_contact.name }
    end

    assert_redirected_to my_contact_path(assigns(:my_contact))
  end

  test "should show my_contact" do
    get :show, id: @my_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_contact
    assert_response :success
  end

  test "should update my_contact" do
    patch :update, id: @my_contact, my_contact: { address: @my_contact.address, cell: @my_contact.cell, email: @my_contact.email, name: @my_contact.name }
    assert_redirected_to my_contact_path(assigns(:my_contact))
  end

  test "should destroy my_contact" do
    assert_difference('MyContact.count', -1) do
      delete :destroy, id: @my_contact
    end

    assert_redirected_to my_contacts_path
  end
end
