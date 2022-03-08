local triple = false;
local parcali = false;
local gunmode = "empty"
local recoil_table={}


function OnEvent(event, arg)
  OutputLogMessage("event = %s, arg = %d\n", event, arg)
  if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
  end
    while true do
      if IsKeyLockOn("capslock") then
        gunmode = "beryl"
      else
        gunmode = "m416"
      end
      if IsKeyLockOn("scrolllock") then
        triple = true
      else
        triple = false
      end
      if IsKeyLockOn("numlock") then
        parcali = true
      else
        parcali = false
      end
      
      local recoil = getVal()
      
      if IsMouseButtonPressed(3) then
        repeat
        if IsMouseButtonPressed(1) then
          repeat
          for i=1,80 do
            if IsMouseButtonPressed(1) then
              MoveMouseRelative(0,recoil[i])
              Sleep(21)
              MoveMouseRelative(0,recoil[i])
              Sleep(21)
              MoveMouseRelative(0,recoil[i])
              Sleep(21)
              MoveMouseRelative(0,recoil[i])
              Sleep(21)
            end
          end
          until not IsMouseButtonPressed(1)
        end
        
        until not IsMouseButtonPressed(3)
      end
    end
      
end


--{20,16,16,16,16,20,20,24,20,24,20,24,20,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr}
  
 -- {4,3,3,3,3,4,4,5,4,5,4,5,4,5,5,4,4,4,5,4,4,4,4
--{5,4,4,4,4,5,5,6,5,6,5,6,4,6,6,6,6,6,6
 function getVal()
   if (triple==true) then
     if (gunmode=="m416") then
       if (parcali==false) then
           hr = 29
           recoil_table =   {20,16,16,16,16,20,20,24,20,24,20,24,20,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr}
           return recoil_table;
       else
           hr = 21
           recoil_table =   {16,12,12,12,16,16,16,20,20,20,20,20,16,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr}
           return recoil_table;
       end
            
            --{6,5,5,5,6,7,7,8,7,8,8,8,7,9,9,8,8,8,8,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr}
            
            
       --return 12;
     elseif (gunmode=="beryl") then
       if (parcali==false) then
         hr=39
         recoil_table = {24,20,20,24,28,28,28,32,28,36,36,32,32,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr}
         return recoil_table;
       else
         hr=30
         recoil_table = {20,16,16,20,24,20,20,24,20,32,32,28,28,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr}
         return recoil_table;          
       --return 16;
       end
     else
       return 0;
     end
     
   elseif (triple==false) then
     if (gunmode=="m416") then
       if(parcali==false) then
         hr = 7
         recoil_table =   {5,4,4,4,4,5,5,6,5,6,5,6,4,6,6,6,6,6,6,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr}
         return recoil_table;
       else
         hr = 5
         recoil_table =   {4,3,3,3,3,4,4,5,4,5,4,5,4,5,5,4,4,4,5,4,4,4,4,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr}
         return recoil_table;
       end
     elseif (gunmode=="beryl") then
       if(parcali==false) then
         hr=9
         recoil_table = {6,5,5,5,6,7,7,8,7,8,8,8,7,9,9,8,8,8,8,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr}
           return recoil_table;     
       --return 4;
       else
         hr=8
         recoil_table = {5,4,4,4,5,5,5,6,5,6,6,6,5,7,7,6,6,6,6,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr,hr}
           return recoil_table;  
       end  
     else
       return 0;
     end
   end
 end
     