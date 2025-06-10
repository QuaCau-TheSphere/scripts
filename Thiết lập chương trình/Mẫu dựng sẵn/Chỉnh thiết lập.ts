
import { parseArgs } from "jsr:@std/cli/parse-args";
import { extract } from "jsr:@std/front-matter/yaml";
import type {Vault as ThiếtLậpVault} from "../../../Apps/Truyền thông/đối ⊷ thoại/Code chạy trên local, server, KV/Bài đăng/Hàm và kiểu cho vault, dự án, bài đăng.ts"
const {nơiLưuVault, tênRepoWebsite} = parseArgs(Deno.args, {
  string: ["nơiLưuVault", "tênRepoWebsite"],
});

import { exec } from "https://deno.land/x/exec/mod.ts";

async function prompt(question: string): Promise<string> {
  const buf = new Uint8Array(1024);
  await Deno.stdout.write(new TextEncoder().encode(question + " "));
  const n = <number>await Deno.stdin.read(buf);
  return new TextDecoder().decode(buf.subarray(0, n)).trim().toUpperCase();
}

const mãDựÁn = await prompt("Nhập mã dự án (A, B, C, D, E, F, G):");
const tênVault = await prompt("Nhập tên vault (có dấu):");
const tênVaultKhôngDấu = await prompt("Nhập tên vault (không dấu):");
const subdomain = await prompt("Nhập subdomain (có dấu):");

const nơiLưu = "D:/Quả Cầu";
const nơiLưuVault = `${nơiLưu}/Vaults/${tênVault}`;
const tênRepoWebsite = `${mãDựÁn}W-${tênVaultKhôngDấu}`;
const tênRepoVault = `${mãDựÁn}V-${tênVaultKhôngDấu}`;
const nơiLưuWebsite = `${nơiLưu}/Code/Websites/${tênRepoWebsite}`;

const nơiLưuMẫu = "D:/Quả Cầu/Code/Scripts/Thiết lập chương trình/Mẫu dựng sẵn";
const nơiLưuVaultMẫu = `${nơiLưuMẫu}/Kho Obsidian`;
const nơiLưuWebsiteMẫu = `${nơiLưuMẫu}/Website`;

await tạoVault();
await tạoWebsite();

async function tạoVault() {
  await exec(`cp -r "${nơiLưuVaultMẫu}" "${nơiLưuVault}"`);
  Deno.chdir(nơiLưuVault);

  await exec(`deno run -A "Chỉnh thiết lập.ts" --nơiLưuVault "${nơiLưuVault}" --tênRepoWebsite "${tênRepoWebsite}"`);
  
  const tênVàOrgRepoVault = `QuaCau-TheSphere/${tênRepoVault}`;
  
  await exec("git init");
  await exec("git add -A");
  await exec("git commit -m 'Khởi tạo vault'");
  
  await exec(`gh repo create --public ${tênVàOrgRepoVault}`);
  const url = (await exec(`gh repo view ${tênVàOrgRepoVault} --json url --jq '.url'`)).output.trim();
  
  await exec(`git remote add origin ${url}`);
  await exec("git push -u origin main");
}

async function tạoWebsite() {
  await exec(`cp -r "${nơiLưuWebsiteMẫu}" "${nơiLưuWebsite}"`);
  Deno.chdir(nơiLưuWebsite);

  await Deno.writeTextFile("CNAME", `${subdomain}.quảcầu.cc\n`);

  const tênVàOrgRepoWebsite = `QuaCau-TheSphere/${tênRepoWebsite}`;

  await exec("git init");
  await exec("git add -A");
  await exec("git commit -m 'Khởi tạo website'");

  await exec(`gh repo create --public ${tênVàOrgRepoWebsite}`);
  const url = (await exec(`gh repo view ${tênVàOrgRepoWebsite} --json url --jq '.url'`)).output.trim();

  await exec(`git remote add origin ${url}`);
  await exec("git push -u origin main");
}



await chỉnhThiếtLậpEnveloppe()
await chỉnhThiếtLậpVault();

async function chỉnhThiếtLậpEnveloppe(){
  const enveloppeDataPath = `${nơiLưuVault}/.obsidian/plugins/obsidian-mkdocs-publisher/data.json`
  const enveloppeData = await JSON.parse(await Deno.readTextFile(enveloppeDataPath))
  enveloppeData["github"]["repo"] = tênRepoWebsite
  await Deno.writeTextFile(enveloppeDataPath, JSON.stringify(enveloppeData))  
}



async function chỉnhThiếtLậpVault() {
  const thiếtLậpVaultPath = `${nơiLưuVault}/Ξ Thiết lập/Ξ Thiết lập.md`;
  const tệpThiếtLậpVault = await Deno.readTextFile(thiếtLậpVaultPath);
  const thiếtLậpVault = extract(tệpThiếtLậpVault).attrs as ThiếtLậpVault;
  thiếtLậpVault["Tên vault"] = t
}
// Tên vault: Obsidian, quản lý dự án và công cụ nghĩ
// Mã vault: C1
// Mô tả vault: Hiểu biết sâu về các môi trường nơi sự suy nghĩ diễn ra, và cách ứng dụng chúng vào quản lý dự án
// URL: https://obsidian.quảcầu.cc