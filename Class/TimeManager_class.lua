--Класс содержащий настройки и алгоритмы для изменения поведения 
--робота в зависимости от времени
TimeManager = {}
function TimeManager:new(TimeManager)
	local private = {}
	local private_func = {}
    local public = {}

    private.id_time_manager = tostring(TimeManager.id_time_manager) or "default_manager"

    --список позиций, за которыми следит тайм-менеджер
    private.positions_to_watch = {}

    ----список интервалов с коэффициентами которые будут применены к тейкам позиции
    --private.time_intervals  = {
    --    interval_name = "name",
    --    interval_begin = datetime,
    --    interval_end = datetime,
    --    positions_table = {
    --        long_1 = {},
    --        long_2 = {},
    --        long_3 = {}
    --    }
--
    --}
    
   -- private.time_intervals  = {}



    function public:get_id_time_manager()
		return private.id_time_manager
	end

    setmetatable(public,self)
    self.__index = self; return public
end