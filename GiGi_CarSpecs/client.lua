local viaturaspec = true

Citizen.CreateThread( function()
  while true do 
    Citizen.Wait(0)
    if viaturaspec then
    local ped = PlayerPedId()
	  if IsPedInAnyVehicle(ped, false) then
		local veh = GetVehiclePedIsIn(ped, false)
		local model = GetEntityModel(veh, false)
    local hash = GetHashKey(model)
    drawTxt(0.2, 0.63, 0.4,0.0,0.30, "Nome ~c~Viatua~w~: " .. GetDisplayNameFromVehicleModel(model), 255, 255, 255, 255)
    drawTxt(0.2, 0.65, 0.4,0.0,0.30, "Velocidade Max ~c~(KM/H)~w~: " .. round(GetVehicleMaxSpeed(model) * 3.6), 255, 255, 255, 255)
    drawTxt(0.2, 0.67, 0.4,0.0,0.30, "Acelaracao ~c~0-100~w~: " .. round(GetVehicleModelAcceleration(model),1), 255, 255, 255, 255)
    drawTxt(0.2, 0.69, 0.4,0.0,0.30, "Caixa de ~c~Velocidades~w~: " .. GetVehicleHighGear(veh), 255, 255, 255, 255)
    drawTxt(0.2, 0.71, 0.4,0.0,0.30, "Capacidade ~c~Passageiros~w~: " .. GetVehicleMaxNumberOfPassengers(veh) + 1, 255, 255, 255, 255)
    drawTxt(0.2, 0.73, 0.4,0.0,0.30, "Estado do Motor ~c~Dano~w~: " .. GetVehicleEngineHealth(veh) + 1, 255, 255, 255, 255)
    drawTxt(0.2, 0.75, 0.4,0.0,0.30, "Estado da Carrosaria ~c~Dano~w~: " .. GetEntityHealth(veh) + 1, 255, 255, 255, 255)
     end
   end
  end
end)

function round(num, numDecimalPlaces)
  local mult = 100^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

function drawTxt(x,y ,width,height,scale, text, r,g,b,a)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(0.35, 0.35)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
 end