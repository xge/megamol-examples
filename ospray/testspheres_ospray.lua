
mmCreateView("GraphEntry_1","View3DGL","::View3DGL_1") 

mmCreateModule("ContextToGL","::ContextToGL_1") 
mmCreateModule("OSPRayRenderer","::OSPRayRenderer_1") 
mmCreateModule("BoundingBoxRenderer","::BoundingBoxRenderer_1") 
mmCreateModule("AmbientLight","::AmbientLight_1") 
mmCreateModule("OSPRaySphereGeometry","::OSPRaySphereGeometry_1") 
mmCreateModule("OSPRayOBJMaterial","::OSPRayOBJMaterial_1") 
mmCreateModule("TestSpheresDataSource","::TestSpheresDataSource_1") 

mmCreateCall("CallRender3DGL","::View3DGL_1::rendering","::BoundingBoxRenderer_1::rendering")
mmCreateCall("CallRender3D","::ContextToGL_1::getContext","::OSPRayRenderer_1::rendering")
mmCreateCall("CallLight","::OSPRayRenderer_1::lights","::AmbientLight_1::deployLightSlot")
mmCreateCall("CallOSPRayStructure","::OSPRayRenderer_1::getStructure","::OSPRaySphereGeometry_1::deployStructureSlot")
mmCreateCall("CallRender3DGL","::BoundingBoxRenderer_1::chainRendering","::ContextToGL_1::rendering")
mmCreateCall("CallOSPRayMaterial","::OSPRaySphereGeometry_1::getMaterialSlot","::OSPRayOBJMaterial_1::deployMaterialSlot")
mmCreateCall("MultiParticleDataCall","::OSPRaySphereGeometry_1::getdata","::TestSpheresDataSource_1::getData")

mmSetParamValue("::View3DGL_1::camstore::settings",[=[]=])
mmSetParamValue("::View3DGL_1::camstore::overrideSettings",[=[false]=])
mmSetParamValue("::View3DGL_1::camstore::autoSaveSettings",[=[false]=])
mmSetParamValue("::View3DGL_1::camstore::autoLoadSettings",[=[true]=])
mmSetParamValue("::View3DGL_1::resetViewOnBBoxChange",[=[false]=])
mmSetParamValue("::View3DGL_1::anim::play",[=[false]=])
mmSetParamValue("::View3DGL_1::anim::speed",[=[4.000000]=])
mmSetParamValue("::View3DGL_1::anim::time",[=[0.000000]=])
mmSetParamValue("::View3DGL_1::backCol",[=[#000020]=])
mmSetParamValue("::View3DGL_1::showLookAt",[=[false]=])
mmSetParamValue("::View3DGL_1::viewKey::MoveStep",[=[0.500000]=])
mmSetParamValue("::View3DGL_1::viewKey::RunFactor",[=[2.000000]=])
mmSetParamValue("::View3DGL_1::viewKey::AngleStep",[=[90.000000]=])
mmSetParamValue("::View3DGL_1::viewKey::FixToWorldUp",[=[true]=])
mmSetParamValue("::View3DGL_1::viewKey::MouseSensitivity",[=[3.000000]=])
mmSetParamValue("::View3DGL_1::hookOnChange",[=[false]=])
mmSetParamValue("::View3DGL_1::cam::position",[=[0;0;4.7320509]=])
mmSetParamValue("::View3DGL_1::cam::orientation",[=[0;0;0;1]=])
mmSetParamValue("::View3DGL_1::cam::projectiontype",[=[Perspective]=])
mmSetParamValue("::View3DGL_1::cam::convergenceplane",[=[0.000000]=])
mmSetParamValue("::View3DGL_1::cam::centeroffset",[=[0;0]=])
mmSetParamValue("::View3DGL_1::cam::halfaperturedegrees",[=[15.000000]=])
mmSetParamValue("::View3DGL_1::cam::halfdisparity",[=[0.025000]=])
mmSetParamValue("::View3DGL_1::cam::ovr::up",[=[0;0;0]=])
mmSetParamValue("::View3DGL_1::cam::ovr::lookat",[=[0;0;0]=])
mmSetParamValue("::OSPRayRenderer_1::SciVis::AOsamples",[=[1]=])
mmSetParamValue("::OSPRayRenderer_1::SciVis::AOdistance",[=[100000002004087734272.000000]=])
mmSetParamValue("::OSPRayRenderer_1::accumulate",[=[true]=])
mmSetParamValue("::OSPRayRenderer_1::SamplesPerPixel",[=[1]=])
mmSetParamValue("::OSPRayRenderer_1::maxRecursion",[=[10]=])
mmSetParamValue("::OSPRayRenderer_1::Type",[=[SciVis]=])
mmSetParamValue("::OSPRayRenderer_1::SciVis::Shadows",[=[false]=])
mmSetParamValue("::OSPRayRenderer_1::PathTracer::BackgroundTexture",[=[]=])
mmSetParamValue("::OSPRayRenderer_1::numThreads",[=[0]=])
mmSetParamValue("::OSPRayRenderer_1::useDBcomponent",[=[true]=])
mmSetParamValue("::OSPRayRenderer_1::device",[=[cpu]=])
mmSetParamValue("::BoundingBoxRenderer_1::enableBoundingBox",[=[true]=])
mmSetParamValue("::BoundingBoxRenderer_1::boundingBoxColor",[=[#ffffff]=])
mmSetParamValue("::BoundingBoxRenderer_1::smoothLines",[=[true]=])
mmSetParamValue("::BoundingBoxRenderer_1::enableViewCube",[=[false]=])
mmSetParamValue("::BoundingBoxRenderer_1::viewCubePosition",[=[top right]=])
mmSetParamValue("::BoundingBoxRenderer_1::viewCubeSize",[=[100]=])
mmSetParamValue("::AmbientLight_1::Intensity",[=[1.000000]=])
mmSetParamValue("::AmbientLight_1::Color",[=[#cccccc]=])
mmSetParamValue("::OSPRaySphereGeometry_1::ParticleList",[=[0]=])
mmSetParamValue("::OSPRayOBJMaterial_1::DiffuseColor",[=[0.800000012;0.800000012;0.800000012]=])
mmSetParamValue("::OSPRayOBJMaterial_1::SpecularColor",[=[0;0;0]=])
mmSetParamValue("::OSPRayOBJMaterial_1::Shininess",[=[10.000000]=])
mmSetParamValue("::OSPRayOBJMaterial_1::Opacity",[=[1.000000]=])
mmSetParamValue("::OSPRayOBJMaterial_1::TransparencyFilterColor",[=[0;0;0]=])
mmSetParamValue("::TestSpheresDataSource_1::numSpheres",[=[15]=])
mmSetParamValue("::TestSpheresDataSource_1::numFrames",[=[100]=])
