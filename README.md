# Raycast Snippets

This repository contains various text expansion snippets for Raycast.

## Usage

1. Import the snippets into your Raycast Text Snippets
2. Use the keywords to trigger the expansions
3. Alternatively, use the [index.json](index.json) file to import all snippets at once

## Available Snippets

## international.json

| Name | Keyword | Output |
|------|---------|---------|
| N with Tilde | `spanishn` | `ñ` |
| E with Acute | `acutee` | `é` |
| A with Umlaut | `umlautA` | `ä` |

## git.json

| Name | Keyword | Output |
|------|---------|---------|
| Git Status | `gitstatus` | `git status` |
| Git Commit Message | `gitcommit` | `git add . && git commit -am ""` |
| Git Push Origin | `gitpush` | `git push origin ` |

## database.json

| Name | Keyword | Output |
|------|---------|---------|
| Select From | `slct` | `SELECT * FROM ` |
| Inner Join | `injn` | `INNER JOIN ` |
| Where Clause | `whr` | `WHERE ` |
| Group By | `grpby` | `GROUP BY ` |

## verbs.json

| Name | Keyword | Output |
|------|---------|---------|
| Initialize | `intlz` | `initialize` |
| Implement | `implmnt` | `implement` |
| Configure | `cnfgr` | `configure` |
| Generate | `gnrt` | `generate` |
| Validate | `vldtt` | `validate` |

## design_patterns.json

| Name | Keyword | Output |
|------|---------|---------|
| Singleton Pattern | `sngltn` | `singleton pattern` |
| Factory Method | `fctry` | `factory method` |
| Observer Pattern | `obsrvr` | `observer pattern` |
| Strategy Pattern | `strtgy` | `strategy pattern` |

## nouns.json

| Name | Keyword | Output |
|------|---------|---------|
| Application | `aplctn` | `application` |
| Environment | `envrmnt` | `environment` |
| Configuration | `cnfg` | `configuration` |
| Management | `mngmnt` | `management` |

## testing.json

| Name | Keyword | Output |
|------|---------|---------|
| Describe Block | `testdescribe` | `describe('', () => {
  
});` |
| Test Case | `testcase` | `test('', () => {
  
});` |
| Expect Statement | `testexpect` | `expect().toBe();` |

## shell.json

| Name | Keyword | Output |
|------|---------|---------|
| Change Directory | `cdir` | `cd ` |
| List Files | `lsf` | `ls -la` |
| Process Status Grep | `psgrep` | `ps aux | grep ` |
| Remove Force | `rmforce` | `rm -rf ` |
| Docker Compose Up | `dockup` | `docker-compose up -d` |

## emoji.json

| Name | Keyword | Output |
|------|---------|---------|
| Thumbs Up | `thumbsup` | `👍` |
| Check Mark | `greencheck` | `✅` |
| Warning | `warningsign` | `⚠️` |
| Rocket | `rocketship` | `🚀` |
| Bug | `bugfix` | `🐛` |
| Fire | `fireemoji` | `🔥` |
| Sparkles | `sparkleemoji` | `✨` |
| Heart | `redheart` | `❤️` |
| Lightning | `zapbolt` | `⚡` |
| Gear | `settingsgear` | `⚙️` |

## punctuation.json

| Name | Keyword | Output |
|------|---------|---------|
| Ellipsis | `ellipsis` | `...` |
| Em Dash | `emdash` | `—` |
| En Dash | `endash` | `-` |
| Quotation Marks | `quote` | `""` |
| Single Quotes | `squote` | `''` |
| Parentheses | `paren` | `()` |
| Square Brackets | `bracket` | `[]` |
| Curly Braces | `brace` | `{}` |
| Angle Brackets | `angle` | `<>` |
| Copyright | `copyright` | `©` |
| Registered | `registered` | `®` |
| Trademark | `trademark` | `™` |
| Bullet Point | `bullet` | `•` |
| Section | `section` | `§` |
| Degree | `degree` | `°` |
| Plus Minus | `plusminus` | `±` |
| Multiplication | `multiply` | `×` |
| Division | `divide` | `÷` |
| Not Equal | `notequal` | `≠` |
| Approximately | `aprx` | `≈` |
| Less Equal | `leq` | `≤` |
| Greater Equal | `geq` | `≥` |
| Infinity | `inf` | `∞` |
| Check Mark | `chk` | `✓` |
| Cross Mark | `crx` | `✗` |
| Arrow Right | `arright` | `→` |
| Arrow Left | `arl` | `←` |
| Arrow Up | `aru` | `↑` |
| Arrow Down | `ard` | `↓` |
| Double Arrow | `darr` | `⇄` |

## code_symbols.json

| Name | Keyword | Output |
|------|---------|---------|
| Lambda Symbol | `lambdasym` | `λ` |
| Function Symbol | `functionsym` | `ƒ` |
| For All | `forallsym` | `∀` |

## mistyped.json

| Name | Keyword | Output |
|------|---------|---------|
| Necessary | `nec` | `necessary` |
| Separate | `sep` | `separate` |
| Definitely | `def` | `definitely` |
| Receive | `rcv` | `receive` |
| Occurrence | `occ` | `occurrence` |

## frameworks/react.json

| Name | Keyword | Output |
|------|---------|---------|
| React Component | `reactcomponent` | `const Component = () => {
  return (
    <>
    </>
  );
};` |
| Use State Hook | `reactusestate` | `const [state, setState] = useState();` |
| Use Effect Hook | `reacteffect` | `useEffect(() => {
  
}, []);` |

## frameworks/vue.json

| Name | Keyword | Output |
|------|---------|---------|
| Vue Component | `vcomp` | `<template>
  
</template>

<script setup>

</script>` |
| Vue Ref | `vref` | `const value = ref()` |
| Vue Reactive | `vreact` | `const state = reactive({})` |
| Vue Computed | `vcmpt` | `const computed = computed(() => {})` |
| Vue Watch | `vwtch` | `watch(source, (newValue, oldValue) => {})` |

## frameworks/nextjs.json

| Name | Keyword | Output |
|------|---------|---------|
| Next Page | `npage` | `export default function Page() {
  return (
    <>
    </>
  );
}` |
| Get Server Side Props | `ngssp` | `export async function getServerSideProps(context) {
  return {
    props: {}
  };
}` |
| Get Static Props | `ngsp` | `export async function getStaticProps(context) {
  return {
    props: {}
  };
}` |
| API Route | `napi` | `export default async function handler(req, res) {
  
}` |

## frameworks/angular.json

| Name | Keyword | Output |
|------|---------|---------|
| Angular Component | `ngcomp` | `@Component({
  selector: '',
  template: ''
})
export class Component {}` |
| Angular Service | `ngsvc` | `@Injectable({
  providedIn: 'root'
})
export class Service {}` |
| Angular Directive | `ngdir` | `@Directive({
  selector: ''
})
export class Directive {}` |
| Angular Pipe | `ngpipe` | `@Pipe({
  name: ''
})
export class Pipe {}` |

## frameworks/express.json

| Name | Keyword | Output |
|------|---------|---------|
| Express Route | `xget` | `app.get('/', async (req, res) => {
  
});` |
| Express Post | `xpost` | `app.post('/', async (req, res) => {
  
});` |
| Express Middleware | `xmid` | `const middleware = (req, res, next) => {
  
};` |
| Express Router | `xrtr` | `const router = express.Router();

module.exports = router;` |

## technical.json

| Name | Keyword | Output |
|------|---------|---------|
| Authentication | `authntc` | `authentication` |
| Authorization | `authrztn` | `authorization` |
| Infrastructure | `infstr` | `infrastructure` |
| Architecture | `rchtctr` | `architecture` |
| Experience | `xprnc` | `experience` |
| Opportunity | `oprtn` | `opportunity` |
| Necessary | `ncsry` | `necessary` |
| Different | `dfrnt` | `different` |
| Government | `gvrmnt` | `government` |
| Important | `imprt` | `important` |
| Knowledge | `knwldg` | `knowledge` |
| Business | `bsns` | `business` |
| Question | `qstn` | `question` |
| Information | `infrmtn` | `information` |
| Available | `avlbl` | `available` |
| Community | `cmnty` | `community` |
| Education | `edctn` | `education` |
| Technology | `tchnlg` | `technology` |
| Resources | `rsrcs` | `resources` |
| Development | `dvlpmnt` | `development` |

## word_endings.json

| Name | Keyword | Output |
|------|---------|---------|
| Ending -tion | `tn` | `tion` |
| Ending -able | `abl` | `able` |
| Ending -ible | `ibl` | `ible` |
| Ending -ing | `ng` | `ing` |
| Ending -ment | `mnt` | `ment` |
| Ending -ness | `nss` | `ness` |

## numbers_dates.json

| Name | Keyword | Output |
|------|---------|---------|
| Today's Date | `tday` | `YYYY-MM-DD` |
| Current Time | `ctime` | `HH:mm:ss` |
| Phone Number | `pnum` | `+1 (xxx) xxx-xxxx` |
| ZIP Code | `zipc` | `xxxxx-xxxx` |

## typing_phrases.json

| Name | Keyword | Output |
|------|---------|---------|
| In order to | `iot` | `in order to` |
| As well as | `awa` | `as well as` |
| Due to the | `dtt` | `due to the` |
| On the other hand | `otoh` | `on the other hand` |
| At the same time | `atst` | `at the same time` |

## math.json

| Name | Keyword | Output |
|------|---------|---------|
| Square Root | `squareroot` | `√` |
| Integral | `integral` | `∫` |
| Partial | `partial` | `∂` |
| Delta | `deltamath` | `Δ` |
| Pi | `pimath` | `π` |
| Sum | `summation` | `∑` |
| Product | `product` | `∏` |
| Subset | `subset` | `⊂` |
| Intersection | `intersect` | `∩` |
| Union | `union` | `∪` |

## currency.json

| Name | Keyword | Output |
|------|---------|---------|
| US Dollar | `usdollar` | `$` |
| Euro | `eurosign` | `€` |
| British Pound | `poundsterling` | `£` |
| Japanese Yen | `yenjapan` | `¥` |
| Bitcoin | `bitcoinsymbol` | `₿` |
| Indian Rupee | `rupeeindia` | `₹` |
| Russian Ruble | `rublerussia` | `₽` |
| Korean Won | `wonkorea` | `₩` |

## documentation.json

| Name | Keyword | Output |
|------|---------|---------|
| Function Parameters | `docparam` | `@param {type} name - description` |
| Returns Documentation | `docreturn` | `@returns {type} description` |
| Example Usage | `docexample` | `@example
 * ```js
 * // code
 * ```` |

## programming.json

| Name | Keyword | Output |
|------|---------|---------|
| Function | `fnc` | `function` |
| Variable | `vrbl` | `variable` |
| Constructor | `cnstr` | `constructor` |
| Interface | `intrfc` | `interface` |

## typing.json

| Name | Keyword | Output |
|------|---------|---------|
| Through | `thrgh` | `through` |
| Because | `becz` | `because` |
| Between | `btwnn` | `between` |

## phrases.json

| Name | Keyword | Output |
|------|---------|---------|
| As far as I know | `afaik` | `as far as I know` |
| In my opinion | `imo` | `in my opinion` |

