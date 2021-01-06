import ava from 'ava'
import repeat from '..'

import { Chain } from '../chain'

ava('build callback', function (test) {
  const loop0 = repeat().add(
    () => null,
    () => null,
    () => null
  )
  test.is(loop0.tasks.length, 3)
})

ava('build explicit', function (test) {
  const loop1 = new Chain().add(
    () => null,
    () => null,
    () => null
  )
  test.is(loop1.tasks.length, 3)
})

ava('sync', function (test) {
  let n: number = 0
  repeat()
    .add(
      () => n++,
      () => n++,
      () => n++
    )
    .once()
  test.is(n, 3)
})

ava('async', async function (test) {
  test.is(
    await new Promise((resolve) => {
      let n: number = 0
      repeat()
        .add(
          async () => n++,
          async () => n++,
          () => resolve(++n)
        )
        .once(true)
    }),
    3
  )
})
