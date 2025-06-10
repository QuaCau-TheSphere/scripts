import { isAbsolute, join } from "jsr:@std/path";
import { assert } from "jsr:@std/assert/assert";
import { parseArgs } from "jsr:@std/cli/parse-args";
import { stringify } from "jsr:@std/yaml";

import type { Kho } from "../../../Apps/Utils/Xử lý kho/Kiểu cho kho, dự án.ts";
import type {
  ĐườngDẫnTuyệtĐối,
  ĐườngDẫnTươngĐối,
} from "../../../Apps/Utils/Xử lý kho/Đường dẫn.ts";
import { API_GITHUB } from "../../../Apps/Utils/Xử lý kho/API.ts";

interface NewType {
  mãDựÁn: string;
  tênKho: string;
  tênKhoKhôngDấuKhôngCách: string;
  tênMiềnCon: string;
}

const { mãDựÁn, tênKho, tênKhoKhôngDấuKhôngCách, tênMiềnCon } = parseArgs(
  Deno.args,
  {
    string: ["mãDựÁn", "tênKho", "tênKhoKhôngDấuKhôngCách", "tênMiềnCon"],
  },
) as NewType;

const nơiLưuKho = `D:/Quả Cầu/Vaults/${tênKho}` as ĐườngDẫnTuyệtĐối;

assert(isAbsolute(nơiLưuKho));

await chỉnhThiếtLậpEnveloppe();
await chỉnhThiếtLậpKho();

async function chỉnhThiếtLậpEnveloppe() {
  const nộiDungEnv = `GITHUB_TOKEN=${API_GITHUB}`;
  const tênRepoWebsite = `${mãDựÁn}W-${tênKhoKhôngDấuKhôngCách}`;
  const đườngDẫnTớiEnveloppe = join(
    nơiLưuKho,
    ".obsidian",
    "plugins",
    "obsidian-mkdocs-publisher",
  ) as ĐườngDẫnTươngĐối;
  const đườngDẫnTớiEnvEnveloppe = join(
    đườngDẫnTớiEnveloppe,
    "env",
  ) as ĐườngDẫnTươngĐối;
  const đườngDẫnTớiDataEnveloppe = join(
    đườngDẫnTớiEnveloppe,
    "data.json",
  ) as ĐườngDẫnTươngĐối;

  const enveloppeData = await JSON.parse(
    await Deno.readTextFile(đườngDẫnTớiDataEnveloppe),
  );
  enveloppeData["github"]["repo"] = tênRepoWebsite;
  await Deno.writeTextFile(
    đườngDẫnTớiDataEnveloppe,
    JSON.stringify(enveloppeData),
  );
  await Deno.writeTextFile(đườngDẫnTớiEnvEnveloppe, nộiDungEnv);
}

async function chỉnhThiếtLậpKho() {
  const đườngDẫnthiếtLậpKho = `${nơiLưuKho}/Ξ Thiết lập/Ξ Thiết lập.md`;
  const kho: Kho = {
    "Tên kho": tênKho,
    "Nơi lưu kho": nơiLưuKho,
    "Mã kho": mãDựÁn,
    URL: `${tênMiềnCon}.quảcầu.cc`,
  };
  const frontmatter = `---\n${stringify(kho)}---\n`;
  await Deno.writeTextFile(đườngDẫnthiếtLậpKho, frontmatter);
}

console.log("Đã chỉnh xong thiết lập của kho");
