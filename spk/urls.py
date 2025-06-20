from django.urls import path
from . import views

urlpatterns = [
    # Dashboard
    path('', views.dashboard, name='dashboard'),
    
    # Authentication
    path('login/', views.login, name='login'),
    path('register/', views.register, name='register'),
    path('logout/', views.logout_view, name='logout'),
    
    # Criteria Management
    path('criteria_list/', views.criteria_list, name='criteria_list'),
    path('add-criteria/', views.add_criteria, name='add_criteria'),
    path('edit-criteria/<int:criteria_id>/', views.edit_criteria, name='edit_criteria'),
    path('delete-criteria/<int:criteria_id>/', views.delete_criteria, name='delete_criteria'),
    
    # Framework Management
    path('frameworks/', views.framework_list, name='framework_list'),
    path('add-framework/', views.add_framework, name='add_framework'),
    path('edit-scores/<int:framework_id>/', views.edit_framework_scores, name='edit_framework_scores'),
    path('frameworks/<int:framework_id>/delete/', views.delete_framework, name='delete_framework'),
    
    # Quick Aksi
    path('export/', views.export_data, name='export_data'),
    path('reset/', views.reset_data, name='reset_data'),
    
    # SAW Calculation
    path('calculate/', views.calculate_saw, name='calculate_saw'),
    
    # CSV Upload
    # path('upload/', views.upload_csv, name='upload_csv'),
    path('download-template/', views.download_csv_template, name='download_csv_template'),
]