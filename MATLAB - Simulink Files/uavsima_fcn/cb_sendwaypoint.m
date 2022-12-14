function cb_sendwaypoint(handles)
    % CB_SENDWAYPOINT description
    %  Send the mission plan to Controller as waypoint.mat file
    %  Input:
    %    handles        - data structure
    %  Output: 
    %   none
    %  Call:
    %
    % Author:
    %   Javen Depari / javensius.sembiring@gmail.com
    % Created:
    %   16.05.2015
    % Revision:
    %   
    % FUNCTION CONSTRUCTION 
    % *** load waypoints
    load waypoints;
    
    % *** Parsing waypoints
    wx = wp_cor(:,1);
    wy = wp_cor(:,2);
    wz = wp_cor(:,3);
    
    save inp_wx.mat wx;
    save inp_wy.mat wy;
    save inp_wz.mat wz;
    
    % *** Copy mission plan as well as uav initial position generated by get_initpos()
    [status,message]=copyfile('*.mat','\\192.10.10.2\UAVSIM_A_Controller');
    
    if status == 1
        msgbox('Files/Mission plan have been sent to Controller','UAVSIM Info')
    else
        msgbox('Failed to send files','UAVSIM Info')
    end
end
