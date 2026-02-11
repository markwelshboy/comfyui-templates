Youtube Video: https://youtu.be/fQadB_s-UV0

Hi everyone! Here is the open-source free version of our newest master skin refiner workflow!

As mentioned, this is a lighter version of the full workflow. While it does do the job and still makes an impact, especially for really plastic looking images, I do highly recommend the full version of the workflow inside of Runpod for maximum control and quality.

The key differences between this workflow and the master workflow are:

2 missing "in-generation" upscaling passes.

Masking control.

No variations for masking options (auto vs manual).

This workflow aims to run on most consumer systems efficiently and quickly which is why we removed the upscaling passes in this workflow. They are the least essential variables in skin refinement, but the most essential in overall image quality (which is why we recommend the master workflow in Runpod to get the best of both worlds).

If you can run Flux and Z-Image, you should be able to run this workflow no problem.

Potential Errors
These workflows are still fundamentally built off of the original Master Skin Refiner workflows. That in mind, some similar nodes are used. Follow these steps to prepare your ComfyUI and ensure you have what you need to run the workflows:

1.) Open ComfyUI and load the workflow

2.) If you get a pop up saying you have missing custom nodes, click on the "Manager" in the top right and select "Install Missing Custom Nodes". Select all that appear and click install.

3.) Once installed, go back to the manager and select "Update All".

4.) Once completed, click "Restart". Once ComfyUI has restarted, refresh the page.

5.) If needed, reload the workflow.

6.) Download all models listed at the bottom of this post and place in the specified folders.

7.) With ComfyUI still loaded, press "R" on your keyboard. You should see a pop-up in the top right of ComfyUI that shows a model refresh is in progress.

8.) Once the refresh is completed, navigate to the models section (in red) and load each of the models specified in each node.

JW Nodes

If you receive an error regarding installation of the JW node pack or if missing custom nodes needed to run the workflow aren't appearing in your "Install Missing Custom Nodes" UI, follow these instructions:

1.) Identify the name of the node pack that is missing.

2.) Visit: https://registry.comfy.org/

3.) In the registry, search for the node pack that is missing in your ComfyUI.

4.) Follow the install instructions on the registry page.

Typically, you will simply navigate to your custom_nodes folder, open CMD, then type "git clone" followed by the specified installation link. This should be all you need to do. Some node packs have a requirements.txt file which also needs to be run. In that case, navigate inside the custom_node pack you installed which has the requirements.txt file and run it using pip install.

RES4LYF Custom Node Pack

If you are missing the res_2m sampler, you can solve this by installing the RES4LYF custom node pack. This pack should be available inside of the Custom Nodes Manager inside of your Manager in ComfyUI - it's really popular.

If not, here is the github link for the pack:

https://github.com/ClownsharkBatwing/RES4LYF

Simply navigate to your custom_nodes folder, open CMD, and type:

1.) git clone https://github.com/ClownsharkBatwing/RES4LYF/

2.) cd RES4LYF

3.) pip install -r requirements.txt

It is recommended to install it from inside Comfy if you can in the Manager.

Models
-- Diffusion Models (models/diffusion_models) --

UltraFineTune: https://civitai.com/models/978314/ultrareal-fine-tune

ZEpicrealismturbo FP8: https://civitai.com/models/2305301/z-epicrealism

-- Loras (models/Loras)--

Aidma Realistic Skin: https://civitai.com/models/1157318/photorealistic-skin-no-plastic-flux

SDXL Skin Realism: https://civitai.com/models/248951/skin-realism-acne-skin-details-imperfections-sdxl

-- Clip --

Clip_l: (models/clip) https://huggingface.co/comfyanonymous/flux_text_encoders/blob/main/clip_l.safetensors

Tt5xxl fp8: (models/text_encoders) https://huggingface.co/comfyanonymous/flux_text_encoders/blob/main/t5xxl_fp8_e4m3fn.safetensors

Qwen 3 4b: (models/text_encoders)

https://huggingface.co/Comfy-Org/z_image_turbo/blob/main/split_files/text_encoders/qwen_3_4b.safetensors

-- VAE (models/upscale_models) --

Flux VAE (ae.safetensors): https://huggingface.co/lovis93/testllm/blob/ed9cf1af7465cebca4649157f118e331cf2a084f/ae.safetensors

-- Upscale Models (models/upscale_models) --

4x Clear Reality: https://huggingface.co/skbhadra/ClearRealityV1/commit/bc01e27b38eec683dc6e3161dd56069c78e015ac

-- SeedVR2 Models (models/SEEDVR2) --

SeedVR2 Model: https://huggingface.co/numz/SeedVR2_comfyUI/blob/main/seedvr2_ema_3b_fp8_e4m3fn.safetensors

SeedVR2 VAE: https://huggingface.co/numz/SeedVR2_comfyUI/blob/main/ema_vae_fp16.safetensors

