board_runner_args(nrfjprog "--nrf-family=NRF52")
board_runner_args(jlink "--device=nrf52" "--speed=4000")

if(CONFIG_BUILD_OUTPUT_UF2)
  set(BOARD_FLASH_RUNNER uf2)
  set(BOARD_DEBUG_RUNNER jlink)

  board_finalize_runner_args(uf2)
endif()

include(${ZEPHYR_BASE}/boards/common/nrfjprog.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
include(${ZEPHYR_BASE}/boards/common/uf2.board.cmake)