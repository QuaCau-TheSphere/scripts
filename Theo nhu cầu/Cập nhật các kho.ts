import { join } from "jsr:@std/path";

type ĐườngDẫnTuyệtĐối = string  & { readonly isAbsolute: true };
const THƯ_MỤC_CHỨA_TẤT_CẢ_CÁC_VAULT = "D:\\Quả Cầu\\Vaults" as ĐườngDẫnTuyệtĐối;
//todo: nhớ chỉnh lại api cho đúng. Cách ra để push lên github
const API_GITHUB= "github_ pat_11ABTCUXI0gdFkZMI4o5Nt_C10UMhD5TX3pQTF9P4q9b2fJ4U7tykgf2MA618wgub6RM6RDN3T4udUCJSL"

async function cóThiếtLậpObsidianBênTrong(thưMục: ĐườngDẫnTuyệtĐối) {
  try {
    for await (const dirEntry of Deno.readDir(thưMục)) {
      if (dirEntry.isDirectory && dirEntry.name === ".obsidian") return true;
    }
    return false;
  } catch {
    return false;
  }
}

async function cậpNhậtEnvEnveloppe(đườngDẫnTớiThưMụcCon: ĐườngDẫnTuyệtĐối) {
  const env = `GITHUB_TOKEN=${API_GITHUB}`
  const đườngDẫnTớiEnvEnveloppe = join(đườngDẫnTớiThưMụcCon, ".obsidian", "plugins", "obsidian-mkdocs-publisher", "env");
  try {
    // console.log(đườngDẫnTớiEnvEnveloppe, await Deno.readTextFile(đườngDẫnTớiEnvEnveloppe))
    await Deno.writeTextFile(đườngDẫnTớiEnvEnveloppe, env);
  } finally {
    //
  }
}

async function cậpNhậtTấtCảCácVault(thưMục: ĐườngDẫnTuyệtĐối = THƯ_MỤC_CHỨA_TẤT_CẢ_CÁC_VAULT) {
  for await (const dirEntry of Deno.readDir(thưMục)) {
    const đườngDẫnTớiThưMụcCon = join(thưMục, dirEntry.name) as ĐườngDẫnTuyệtĐối;
    if (await cóThiếtLậpObsidianBênTrong(đườngDẫnTớiThưMụcCon)) {
      await cậpNhậtEnvEnveloppe(đườngDẫnTớiThưMụcCon);
    } else if (dirEntry.isDirectory) {
      await cậpNhậtTấtCảCácVault(đườngDẫnTớiThưMụcCon);
    }
  }
}

await cậpNhậtTấtCảCácVault();