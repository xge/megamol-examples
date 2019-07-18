mmCreateView("testspheres", "GUIView", "::gui")
mmCreateModule("View3D", "::view")
mmCreateModule("SphereRenderer", "::renderer")
mmSetParamValue("::renderer::renderMode", "Simple")
mmCreateModule("TestSpheresDataSource", "::data")
mmCreateCall("CallRenderView", "::gui::renderview", "::view::render")
mmCreateCall("CallRender3D", "::view::rendering", "::renderer::rendering")
mmCreateCall("MultiParticleDataCall", "::renderer::getData", "::data::getData")