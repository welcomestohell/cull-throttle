--[[
Created by boatbomber - Licensed under Mozilla Public License Version 2.0
Code is processed by Darklua and may be difficult to read. Check the original source on GitHub if needed.
]]
--Modified for use in Welcome To Hell
--!strict

export type VoxelKey = Vector3

export type Voxel = { Instance }

export type ObjectData = {
	cframe: CFrame,
	distance: number,
	halfBoundingBox: Vector3,
	radius: number,
	voxelKeys: { [VoxelKey]: true },
	desiredVoxelKeys: { [VoxelKey]: boolean },
	lastCheckClock: number,
	lastUpdateClock: number,
	jitterOffset: number,
	changeConnections: { RBXScriptConnection },
	cframeSource: Instance,
	cframeType: string,
	boundingBoxSource: Instance,
	boundingBoxType: string,
}

return nil
