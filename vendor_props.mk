#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=560

# SurfaceFlinger
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.set_idle_timer_ms=500 \
    ro.surface_flinger.set_touch_timer_ms=750 \
    ro.surface_flinger.set_display_power_timer_ms=1000 \
    ro.surface_flinger.use_smart_90_for_video=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000
