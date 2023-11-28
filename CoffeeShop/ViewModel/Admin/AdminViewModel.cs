﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.RightsManagement;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows;
using System.Collections;
using System.Windows.Navigation;
using CoffeeShop.View.AdminView;
namespace CoffeeShop.ViewModel.Admin
{
    public class AdminViewModel:ViewModelBase
    {
        public Frame contentFrame { get; set; }
        public Window adminWindow {  get; set; }
        public ICommand setAdminWindow { get; set; }
        public ICommand setContentFrame { get; set; }


        public ICommand zoomAdmin { get; set; }
        public ICommand exitAdmin { get; set; }
        public ICommand minimizeAdmin { get; set; }
        public ICommand posView { get; set; }
        public ICommand menuView { get; set; }
        public ICommand historyView { get; set; }

        public AdminViewModel()
        {
            posView = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                contentFrame.Content = new PosPage();

            });
            historyView = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                contentFrame.Content = new HistoryPage();

            });
            menuView = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                contentFrame.Content = new MenuPage();

            });
            setAdminWindow = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                contentFrame.Content = new PosPage();
                adminWindow = p;
            });
            setContentFrame = new RelayCommand<Frame>((p) => { return true; }, (p) =>
            {
                contentFrame = p;
            });
            zoomAdmin = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                if (adminWindow.WindowState == WindowState.Normal)
                {
                    adminWindow.WindowState = WindowState.Maximized;
                }
                else
                {
                    adminWindow.WindowState = WindowState.Normal;
                }
            });
            minimizeAdmin = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                adminWindow.WindowState = WindowState.Minimized;
            });
            exitAdmin = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                adminWindow.Close();
            });
        }
    }
}