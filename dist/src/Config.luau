--[[
Created by boatbomber - Licensed under Mozilla Public License Version 2.0
Code is processed by Darklua and may be difficult to read. Check the original source on GitHub if needed.
]]
--Modified for use in Welcome To Hell
--!strict

local Config = {}
Config.__index = Config

type ConfigurationProto = {
	voxelSize: number,
	multiVoxelRadiusThreshold: number,

	computeVisibilityOnlyOnDemand: boolean,
	strictlyEnforceWorstRefreshRate: boolean,

	searchTimeBudget: number,
	updateTimeBudget: number,
	ingestTimeBudget: number,

	bestRefreshRate: number,
	worstRefreshRate: number,
	refreshRateRange: number,
	refreshRateMidpoint: number,

	minRenderDistance: number,
	maxRenderDistance: number,
	renderDistanceMidpoint: number,
	dynamicRenderDistance: boolean,
	renderDistance: number,
	renderDistanceStep: number,
	renderDistanceDirection: number,
}

export type Config = typeof(setmetatable({} :: ConfigurationProto, Config))

function Config.new(): Config
	local self = setmetatable({}, Config)

	self.voxelSize = 100
	self.multiVoxelRadiusThreshold = self.voxelSize * 0.25

	self.computeVisibilityOnlyOnDemand = false
	self.strictlyEnforceWorstRefreshRate = false

	self.searchTimeBudget = 8E-4	
self.ingestTimeBudget = 1.2E-3	
self.updateTimeBudget = 4E-4
	
self.bestRefreshRate = 1.6666666666666665E-2	
self.worstRefreshRate = 6.666666666666666E-2	
self.refreshRateRange = self.worstRefreshRate - self.bestRefreshRate
	self.refreshRateMidpoint = (self.bestRefreshRate + self.worstRefreshRate) / 2

	self.minRenderDistance = 150
	self.maxRenderDistance = 2000
	self.renderDistanceMidpoint = (self.minRenderDistance + self.maxRenderDistance) / 2
	self.dynamicRenderDistance = self.minRenderDistance ~= self.maxRenderDistance
	self.renderDistance = self.renderDistanceMidpoint
	self.renderDistanceStep = 0.03
	self.renderDistanceDirection = 0

	return self
end

return Config
