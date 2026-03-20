# 歐萊德官網重塑 — Site Map

> 版本：v1.0
> [O'right 官網架構圖](https://oright.slickplan.com/bimf9lwa)
> 日期：2026-03-11
> 用途：提供資通部門進行網站架構開發參考

---

## 說明

- `[內頁]` 為本次重塑新建頁面
- `[外連]` 為連結至第三方或現有系統，不在本次開發範圍
- `[彈窗]` 為 Modal 覆蓋層，非獨立頁面路由
- `[動態]` 表示頁面依參數呈現不同內容

---

## 頁面架構總覽

<style>
.sm-wrap{padding:16px 0 24px}
.legend{display:flex;gap:16px;flex-wrap:wrap;margin-bottom:20px;font-size:12px;color:#6b7280}
.leg{display:flex;align-items:center;gap:6px}
.leg-dot{width:10px;height:10px;border-radius:2px;flex-shrink:0}
.page-tree{display:flex;flex-direction:column;gap:6px}
.page-group{border:1px solid #e5e7eb;border-radius:10px;overflow:hidden;background:#fff}
.page-header{display:flex;align-items:center;gap:10px;padding:10px 14px;cursor:pointer;user-select:none;transition:background .15s}
.page-header:hover{background:#f9fafb}
.page-dot{width:10px;height:10px;border-radius:2px;flex-shrink:0}
.page-title{font-size:14px;font-weight:500;color:#111827;flex:1}
.page-route{font-size:12px;color:#9ca3af;font-family:ui-monospace,monospace}
.page-ext{font-size:11px;padding:2px 7px;border-radius:4px;background:#fef3c7;color:#92400e;flex-shrink:0}
.chevron{width:16px;height:16px;flex-shrink:0;transition:transform .2s;color:#9ca3af}
.chevron.open{transform:rotate(90deg)}
.page-body{border-top:1px solid #f3f4f6;padding:10px 14px 12px 34px;display:none;flex-direction:column;gap:2px}
.page-body.open{display:flex}
.section{display:flex;align-items:flex-start;gap:8px;padding:5px 8px;border-radius:6px}
.section:hover{background:#f9fafb}
.section.indent{padding-left:20px}
.sec-bullet{width:5px;height:5px;border-radius:50%;background:#d1d5db;margin-top:6px;flex-shrink:0}
.sec-bullet.sub{width:4px;height:4px;background:#e5e7eb;margin-top:7px}
.sec-name{font-size:13px;color:#374151}
.sec-name.sub{font-size:12px;color:#6b7280}
.sec-links{display:flex;flex-wrap:wrap;gap:4px;margin-top:5px}
.cta-pill{font-size:11px;padding:3px 9px;border-radius:12px;border:1px solid #d1d5db;color:#6b7280;white-space:nowrap;background:#fff}
.cta-pill.ext{border-color:#f59e0b;color:#b45309;background:#fffbeb}
.sec-group{display:flex;flex-direction:column;gap:1px;flex:1}
.tier-label{font-size:11px;font-weight:600;color:#9ca3af;padding:8px 0 4px;letter-spacing:.06em;text-transform:uppercase}
.divider{height:1px;background:#f3f4f6;margin:8px 0}
.url-link{font-size:12px;color:#2563eb;font-family:ui-monospace,monospace;word-break:break-all;padding:6px 8px;background:#eff6ff;border-radius:6px;margin-top:4px}
</style>

<div class="sm-wrap">
<div class="legend">
  <div class="leg"><div class="leg-dot" style="background:#7F77DD"></div>主要頁面</div>
  <div class="leg"><div class="leg-dot" style="background:#1D9E75"></div>延伸頁面</div>
  <div class="leg"><div class="leg-dot" style="background:#D85A30"></div>動態路由</div>
  <div class="leg"><div class="leg-dot" style="background:#BA7517"></div>外部連結</div>
</div>
<div class="page-tree" id="tree"></div>
</div>

<script>
const pages = [
  {
    title:"首頁", route:"/", color:"#7F77DD", label:"main",
    sections:[
      {name:"Hero", links:[{t:"探索產品→/products"},{t:"了解更多→/about"}]},
      {name:"品牌故事 Our Story", links:[{t:"了解品牌故事→/about"}]},
      {name:"永續數據 Tabs", links:[{t:"參訪國家數→/visited-countries"},{t:"完整永續報告→/sustainability"}]},
      {name:"綠色產品系列", links:[{t:"[彈窗] 產品詳情",e:true},{t:"查看全部→/products"}]},
      {name:"影音故事 Brand Film", links:[{t:"[彈窗] 影片播放",e:true}]},
      {name:"最新消息", links:[{t:"新聞卡片→/news/:id"},{t:"查看全部→/news"}]},
      {name:"CTA 結尾區", links:[{t:"了解更多→/about"},{t:"探索產品→/products"}]},
    ]
  },
  {
    title:"關於我們", route:"/about", color:"#7F77DD", label:"main",
    sections:[
      {name:"Hero"},
      {name:"氣候數據 Climate Emergency"},
      {name:"GDP → GEP Paradigm Shift"},
      {name:"可驗證行動 Verified Actions"},
      {name:"±R 計畫 Zero-Carbon Living"},
      {name:"創辦人", links:[{t:"創辦人專欄→/news?category=founder"}]},
      {name:"品牌時間軸 Our Journey"},
      {name:"CTA 結尾區", links:[{t:"探索產品→/products"},{t:"查看永續美妝→/sustainability"}]},
    ]
  },
  {
    title:"綠色產品", route:"/products", color:"#7F77DD", label:"main",
    sections:[
      {name:"Hero"},
      {name:"分類篩選列", links:[{t:"全部"},{t:"明星產品"},{t:"髮絲養護"},{t:"臉部保養"},{t:"美體保養"}]},
      {name:"分類說明區（選擇後顯示）", links:[{t:"前往官方商店",e:true}]},
      {name:"產品格狀列表", links:[{t:"[彈窗] 產品詳情",e:true}]},
      {name:"CTA 結尾區", links:[{t:"了解品牌理念→/about"},{t:"查看永續數據→/sustainability"}]},
    ]
  },
  {
    title:"永續美妝", route:"/sustainability", color:"#7F77DD", label:"main",
    sections:[
      {name:"Hero"},
      {name:"數據條"},
      {name:"獲獎數據摘要 Tabs", links:[{t:"Tab：國際設計大獎"},{t:"Tab：永續美妝建築"},{t:"Tab：ESG 企業責任"}]},
      {name:"16 Free"},
      {name:"TF 實驗室"},
      {name:"綠建築"},
      {name:"氣候行動"},
      {name:"解凍格陵蘭", sub:true},
      {name:"地球一小時", sub:true},
      {name:"RE100 / 碳權"},
      {name:"INCI 命名權"},
      {name:"永續行動影片", links:[{t:"播放鈕→[彈窗] 影片播放",e:true}]},
      {name:"CTA 結尾區", links:[{t:"了解我們的故事→/about"},{t:"探索獲獎產品→/products"}]},
    ]
  },
  {
    title:"認證", route:"/certification", color:"#7F77DD", label:"main",
    sections:[
      {name:"Hero"},
      {name:"GMP"},
      {name:"ISO 認證"},
      {name:"碳中和 / 碳標籤"},
      {name:"USDA"},
      {name:"實驗室認證"},
      {name:"CTA 結尾區", links:[{t:"探索認證產品→/products"},{t:"查看永續數據→/sustainability"}]},
    ]
  },
  {
    title:"關鍵新聞", route:"/news", color:"#7F77DD", label:"main",
    sections:[
      {name:"Hero"},
      {name:"分類篩選列", links:[{t:"全部"},{t:"最新消息"},{t:"創辦人專欄"},{t:"暢銷書"},{t:"經典問答"}]},
      {name:"精選新聞（大卡）", links:[{t:"→/news/:id"}]},
      {name:"一般新聞卡片", links:[{t:"→/news/:id"}]},
      {name:"載入更多 View Archive"},
      {name:"電子報訂閱表單"},
    ]
  },
  {
    title:"新聞內頁", route:"/news/:id", color:"#D85A30", label:"dynamic",
    sections:[
      {name:"返回消息列表", links:[{t:"→/news"}]},
      {name:"文章主體", links:[{t:"分類標籤"},{t:"標題、日期"},{t:"主視覺圖"},{t:"正文段落"}]},
      {name:"延伸閱讀（3則）", links:[{t:"→/news/:id"}]},
      {name:"側欄：實證數據卡", links:[{t:"數據指標"},{t:"對應 SDGs"},{t:"認證標章"}]},
      {name:"側欄：產品 CTA 卡", links:[{t:"→/products"}]},
    ]
  },
  {
    title:"已參訪國家", route:"/visited-countries", color:"#7F77DD", label:"main",
    sections:[
      {name:"Hero（國家數/大洲/年份）"},
      {name:"全球參訪紀實（影片）", links:[{t:"[彈窗] 影片播放",e:true}]},
      {name:"各洲參訪統計"},
      {name:"參訪國家列表", links:[{t:"區域篩選列"},{t:"國家卡片 hover"}]},
      {name:"CTA 結尾區", links:[{t:"預約參訪→/visit"},{t:"了解品牌→/about"}]},
    ]
  },
  {
    title:"永續報告書", route:"/csr", color:"#1D9E75", label:"ext",
    sections:[
      {name:"Hero"},
      {name:"雙報告介紹", links:[{t:"企業永續報告書（GRI）"},{t:"氣候暨自然報告書（TNFD）"}]},
      {name:"TNFD 先行者宣言 Spotlight"},
      {name:"報告下載中心", links:[{t:"企業永續報告 2013–2024"},{t:"氣候暨自然報告 TNFD"},{t:"下載 PDF",e:true}]},
      {name:"揭露框架", links:[{t:"TNFD"},{t:"TCFD"},{t:"SBTi"},{t:"GRI"},{t:"ISO 14068-1"}]},
      {name:"CTA 結尾區", links:[{t:"下載最新報告書",e:true},{t:"查看認證清單→/certification"}]},
    ]
  },
  {
    title:"環境教育參訪", route:"/visit", color:"#1D9E75", label:"ext",
    sections:[
      {name:"Hero（91國/+23%/政府認證/免費）"},
      {name:"場域亮點 Venue Highlights"},
      {name:"申請資訊 Visit Info"},
      {name:"活動方案輪播", links:[{t:"綠色之旅"},{t:"資源循環"},{t:"ESG 企業"}]},
      {name:"預約申請 Contact CTA", links:[{t:"電話"},{t:"E-mail"},{t:"LINE"}]},
      {name:"預約流程", links:[{t:"預約報名"},{t:"主動聯繫"},{t:"審核"},{t:"完成預約"},{t:"活動當天"}]},
      {name:"交通路線", links:[{t:"Google 地圖",e:true}]},
      {name:"CTA 結尾區", links:[{t:"立即預約→#contact-cta"},{t:"查看已參訪國家→/visited-countries"}]},
    ]
  },
  {
    title:"人才招募", route:"[外連 104]", color:"#BA7517", label:"external", ext:true,
    url:"https://www.104.com.tw/company/5x6ndog?jobsource=ref_perplexity"
  },
  {
    title:"聯絡我們", route:"/contact", color:"#1D9E75", label:"ext",
    sections:[
      {name:"公司資訊（左欄）", links:[{t:"Google 地圖",e:true}]},
      {name:"聯絡表單（右欄）", links:[{t:"姓名/稱謂"},{t:"聯絡電話"},{t:"所在地區"},{t:"電子郵件"},{t:"諮詢類型（10項）"},{t:"意見分享"},{t:"CAPTCHA"},{t:"確認送出→[表單 API]"}]},
    ]
  },
  {
    title:"跨界合作", route:"/cooperation", color:"#1D9E75", label:"ext",
    sections:[
      {name:"Hero"},
      {name:"全家便利商店"},
      {name:"薰衣草森林"},
      {name:"家樂福"},
      {name:"IHG 洲際飯店集團"},
      {name:"送禮成績展示"},
      {name:"CTA 結尾區", links:[{t:"聯絡我們→/contact"},{t:"了解品牌理念→/about"}]},
    ]
  },
  {
    title:"百貨體驗館", route:"/store", color:"#1D9E75", label:"ext",
    sections:[
      {name:"Hero"},
      {name:"門市列表（兩層篩選）", links:[{t:"台灣（26店）"},{t:"中國·上海"},{t:"日本·東京/大阪/京都"}]},
      {name:"門市圖卡", links:[{t:"Google Maps",e:true}]},
      {name:"體驗館特色（AI 六維頭皮檢測）"},
      {name:"CTA 結尾區", links:[{t:"查看門市地圖→#store-locator"},{t:"了解產品系列→/products"}]},
    ]
  },
];

function chevronSVG(open){
  return `<svg class="chevron${open?' open':''}" viewBox="0 0 16 16" fill="none"><path d="M6 4l4 4-4 4" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>`;
}

function renderPage(p,i){
  const id='pg'+i;
  const isExt=p.label==='external';
  const hasSections=p.sections&&p.sections.length>0;
  const bodyContent = p.url
    ? `<div class="url-link"><a href="${p.url}" style="color:var(--color-text-info);text-decoration:none">${p.url}</a></div>`
    : (hasSections ? p.sections.map(s=>`
    <div class="section${s.sub?' indent':''}">
      <div class="sec-bullet${s.sub?' sub':''}"></div>
      <div class="sec-group">
        <div class="sec-name${s.sub?' sub':''}">${s.name}</div>
        ${s.links&&s.links.length?`<div class="sec-links">${s.links.map(l=>`<span class="cta-pill${l.e?' ext':''}">${l.t}</span>`).join('')}</div>`:''}
      </div>
    </div>`).join('') : '');

  return `<div class="page-group">
  <div class="page-header" onclick="toggle('${id}')">
    <div class="page-dot" style="background:${p.color}"></div>
    <span class="page-title">${p.title}</span>
    <span class="page-route">${p.route}</span>
    ${isExt?`<span class="page-ext">外連</span>`:''}
    <div id="${id}-chev">${chevronSVG(false)}</div>
  </div>
  <div class="page-body" id="${id}" style="padding-left:${p.url?'14px':'34px'}">
    ${bodyContent}
  </div>
</div>`;
}

const tree=document.getElementById('tree');
const mainLabel=document.createElement('div');
mainLabel.className='tier-label';
mainLabel.textContent='主要頁面 — Main Pages';
tree.appendChild(mainLabel);
pages.filter(p=>['main','dynamic'].includes(p.label)).forEach((p,i)=>tree.insertAdjacentHTML('beforeend',renderPage(p,i)));
const div=document.createElement('div');
div.className='divider';
tree.appendChild(div);
const extLabel=document.createElement('div');
extLabel.className='tier-label';
extLabel.textContent='延伸頁面 — Extended Pages';
tree.appendChild(extLabel);
pages.filter(p=>['ext','external'].includes(p.label)).forEach((p,i)=>tree.insertAdjacentHTML('beforeend',renderPage(p,i+20)));

function toggle(id){
  const body=document.getElementById(id);
  const chev=document.getElementById(id+'-chev');
  const isOpen=body.classList.contains('open');
  body.classList.toggle('open',!isOpen);
  chev.querySelector('.chevron').classList.toggle('open',!isOpen);
}
</script>

---

## 一、全域導覽（Global Navigation）

### 1-1 Navbar

```
Navbar
├── Logo → /
├── 主選單
│   ├── 關於我們 → /about
│   ├── 永續美妝 → /sustainability
│   ├── 綠色產品 → /products
│   ├── 認證 → /certification
│   └── 關鍵新聞 → /news
├── Shop Now（下拉）
│   ├── O'right → [外連] oright.inc/tw/products_green/1
│   ├── O'right Pro → [外連] pro.oright.inc
│   └── 口腔護理 → [外連] orightnaturaloral.com
└── 更多（漢堡下拉）
    ├── 永續報告書 → /csr
    ├── 環境教育參訪 → /visit
    ├── 人才招募 → [外連] https://www.104.com.tw/company/5x6ndog?jobsource=ref_perplexity
    ├── 聯絡我們 → /contact
    ├── 跨界合作 → /cooperation
    └── 百貨體驗館 → /store
```

### 1-2 Footer

```
Footer
├── 品牌欄
│   └── Logo → /
├── 探索欄
│   ├── 關於我們 → /about
│   ├── 永續美妝 → /sustainability
│   ├── 綠色產品 → /products
│   ├── 認證 → /certification
│   └── 關鍵新聞 → /news
├── 更多資訊欄
│   ├── 永續報告書 → /csr
│   ├── 環境教育參訪 → /visit
│   ├── 跨界合作 → /cooperation
│   ├── 百貨體驗館 → /store
│   └── 聯絡我們 → /contact
├── 聯絡欄（靜態資訊）
│   ├── 電話：03-411-6789
│   ├── 地址：桃園市龍潭區
│   └── Email：service@oright.com.tw
└── 版權列
    ├── 人才招募 → [外連] https://www.104.com.tw/company/5x6ndog?jobsource=ref_perplexity
    ├── 隱私權政策 → [外連] oright.inc/tw/privacy
    └── Facebook / Instagram / YouTube → [外連]
```

---

## 二、主要頁面（Main Pages）

### 2-1 首頁 `/`

```
首頁 /
├── Hero
│   ├── CTA：探索產品 → /products
│   └── CTA：了解更多 → /about
├── 品牌故事（Our Story）
│   └── 連結：了解品牌故事 → /about
├── 永續數據 Tabs
│   ├── Tab：永續影響力
│   │   └── 連結：參訪國家數 → /visited-countries
│   ├── Tab：榮耀成就
│   └── Tab：碳足跡
│       └── CTA：探索完整永續報告 → /sustainability
├── 綠色產品系列
│   ├── 產品卡點擊 → [彈窗] 產品詳情 Modal
│   └── CTA：查看全部產品系列 → /products
├── 影音故事（Brand Film）
│   └── 播放鈕 → [彈窗] 影片播放
├── 最新消息
│   ├── 新聞卡片 → /news/:id
│   └── 連結：查看全部 → /news
└── CTA 結尾區
    ├── 了解更多 → /about
    └── 探索產品 → /products
```

### 2-2 關於我們 `/about`

```
關於我們 /about
├── Hero
├── 氣候數據（Climate Emergency）
├── GDP → GEP（Paradigm Shift）
├── 可驗證行動（Verified Actions）
├── ±R 計畫（Zero-Carbon Living）
├── 創辦人
│   └── 連結：閱讀創辦人專欄 → /news?category=founder
├── 品牌時間軸（Our Journey）
└── CTA 結尾區
    ├── 探索產品 → /products
    └── 查看永續美妝 → /sustainability
```

### 2-3 綠色產品 `/products`

```
綠色產品 /products
├── Hero
├── 分類篩選列
│   ├── 全部產品
│   ├── 明星產品
│   ├── 髮絲養護
│   ├── 臉部保養
│   └── 美體保養
├── 分類說明區（選擇後顯示）
│   └── CTA：前往官方商店 → [外連] oright.inc/tw/products_green/1
├── 產品格狀列表
│   └── 產品卡點擊 → [彈窗] 產品詳情 Modal
└── CTA 結尾區
    ├── 了解品牌理念 → /about
    └── 查看永續數據 → /sustainability
```

### 2-4 永續美妝 `/sustainability`

```
永續美妝 /sustainability
├── Hero
├── 數據條（Stats Bar）
├── 獲獎數據摘要 Tabs
│   ├── Tab：國際設計大獎
│   ├── Tab：永續美妝建築
│   └── Tab：ESG 企業責任
├── 永續行動影片
│   └── 播放鈕 → [彈窗] 影片播放
└── CTA 結尾區
    ├── 了解我們的故事 → /about
    └── 探索獲獎產品 → /products
```

### 2-5 認證 `/certification`

```
認證 /certification
├── Hero
├── 數據條（Stats Bar）
├── 分類篩選列
│   ├── 全部認證
│   ├── 國際設計大獎
│   ├── 綠建築與環境認證
│   ├── 碳中和與氣候認證
│   └── ESG 與永續獎項
├── 認證卡片群組（依分類）
└── 認證里程碑時間軸
    └── CTA 結尾區
        ├── 探索認證產品 → /products
        └── 查看永續數據 → /sustainability
```

### 2-6 關鍵新聞 `/news`

```
關鍵新聞 /news
├── Hero
├── 分類篩選列
│   ├── 全部
│   ├── 永續行動
│   ├── 產品創新
│   ├── 獲獎榮耀
│   ├── 企業動態
│   └── 媒體報導
├── 精選新聞（大卡）→ /news/:id
├── 一般新聞卡片 → /news/:id
├── 載入更多（View Archive）
└── 電子報訂閱表單
```

### 2-7 新聞內頁 `/news/:id` `[動態]`

```
新聞內頁 /news/:id
├── 返回消息列表 → /news
├── 文章主體
│   ├── 分類標籤
│   ├── 標題、日期
│   ├── 主視覺圖
│   └── 正文段落
├── 延伸閱讀（3 則）→ /news/:id
└── 側欄
    ├── 實證數據卡
    │   ├── 數據指標
    │   ├── 對應 SDGs
    │   └── 認證標章
    └── 產品 CTA 卡 → /products
```

### 2-8 已參訪國家 `/visited-countries`

```
已參訪國家 /visited-countries
├── Hero（數據：國家數 / 大洲 / 年份）
├── 全球參訪紀實（影片）
│   └── 播放鈕 → [彈窗] 影片播放
├── 各洲參訪統計
├── 參訪國家列表
│   ├── 區域篩選列
│   └── 國家卡片（hover 顯示參訪日期）
└── CTA 結尾區
    ├── 預約參訪 → /visit
    └── 了解品牌 → /about
```

---

## 三、延伸頁面（Extended Pages）

### 3-1 永續報告書 `/csr`

```
永續報告書 /csr
├── Hero
├── 雙報告介紹（Dual Reports）
│   ├── 企業永續報告書（GRI · 年度 · 2013–）
│   └── 氣候暨自然報告書（TNFD · WEF Pioneer · 2023–）
├── TNFD 先行者宣言（TNFD Spotlight）
│   ├── 創辦人引言（葛望平）
│   └── 大數字：320 家 WEF TNFD 先行者企業
├── 報告下載中心（Report Downloads）
│   ├── Tab：企業永續報告書（2013–2024）
│   │   ├── 最新版大卡（2024）→ 下載 PDF [外連 / 檔案]
│   │   └── 歷年列表（2013–2023）→ 下載 PDF [外連 / 檔案]
│   └── Tab：氣候暨自然報告書（TNFD）
│       └── 最新版大卡（2023）→ 下載 PDF [外連 / 檔案]
├── 揭露框架（Disclosure Frameworks）
│   └── 框架清單：TNFD / TCFD / SBTi / Race to Zero / GRI / ISO 14068-1
└── CTA 結尾區
    ├── 下載最新報告書 → [外連 / 檔案]
    └── 查看認證清單 → /certification
```

### 3-2 環境教育參訪 `/visit`

```
環境教育參訪 /visit
├── Hero（數據條：91國 / +23% / 政府認證 / 免費）
├── 場域亮點（Venue Highlights）
│   ├── 政府認證環境教育場域
│   ├── EEWH 鑽石級綠建築
│   └── 從工廠到體驗，真實的永續現場
├── 申請資訊（Visit Info）
│   ├── 開放時間
│   ├── 人數限制
│   ├── 預約申請
│   └── 課程費用
├── 活動方案輪播（Program Carousel）
│   ├── 方案一：歐萊德綠色之旅（Green Journey）
│   ├── 方案二：資源循環綠色實踐（Circular Economy）
│   └── 方案三：邁向 ESG 的綠色企業（ESG Leadership）
├── 預約申請（Contact CTA）
│   ├── 來電：03-411-6789 #1999
│   ├── E-mail：OrightVisit@oright.inc
│   └── LINE：oright12890464
├── 預約流程（Booking Process）
│   ├── 01 預約報名
│   ├── 02 主動聯繫
│   ├── 03 歐萊德審核
│   │   ├── 通過 → 04 完成預約
│   │   └── 未通過（資料不足 / 資格限制）
│   ├── 04 完成預約
│   └── 05 活動當天
├── 交通路線（Transportation）
│   └── 查看 Google 地圖 → [外連]
└── CTA 結尾區
    ├── 立即預約 → #contact-cta
    └── 查看已參訪國家 → /visited-countries
```

### 3-3 人才招募 `[外連]`

> 連結：https://www.104.com.tw/company/5x6ndog?jobsource=ref_perplexity

```
人才招募 [外連 → 104 人力銀行]
├── Hero
├── 品牌雇主價值主張（EVP）
├── 工作環境 / 福利
├── 職缺列表（待規劃是否串接 HR 系統）
└── CTA 結尾區
```

### 3-4 聯絡我們 `/contact`

```
聯絡我們 /contact
├── 公司資訊（左欄）
│   ├── 歐萊德國際股份有限公司
│   ├── 地址：32544 桃園市龍潭區中豐路高平段 18 號
│   ├── Tel：+886-3-4116789
│   ├── Fax：+886-3-4116779
│   └── 在 Google 地圖中開啟 → [外連]
└── 聯絡表單（右欄）
    ├── 姓名 + 稱謂（小姐 / 先生）
    ├── 聯絡電話
    ├── 所在地區
    ├── 電子郵件
    ├── 綠生活諮詢類型（下拉選單）
    │   ├── 產品購買諮詢
    │   ├── 綠沙龍合作
    │   ├── 企業禮盒採購
    │   ├── 百貨體驗
    │   ├── 購物平台
    │   ├── 旅宿合作
    │   ├── 綠建築參訪
    │   ├── 檢舉非法商品
    │   ├── 活動提案/媒體合作
    │   └── 其他諮詢與建議
    ├── 意見分享（textarea）
    ├── 驗證碼（CAPTCHA）
    └── 確認送出 → [表單 API]
```

### 3-5 跨界合作 `/cooperation`

```
跨界合作 /cooperation
├── Hero
├── 合作方向 / 類型
├── 合作案例
└── 合作申請表單
    └── 送出 → [表單 API]
```

### 3-6 百貨體驗館 `/store`

```
百貨體驗館 /store
├── Hero
├── 門市列表（兩層互動篩選）
│   ├── Layer 1 國家篩選：台灣總部 / 中國 / 日本
│   ├── Layer 2 地區篩選（依國家顯示）
│   │   ├── 台灣：ALL / 北區(15) / 中區(5) / 南區(6)
│   │   ├── 中國：ALL / 上海
│   │   └── 日本：ALL / Tokyo / Osaka / Kyoto
│   └── 門市圖卡（名稱 / 地址 / 電話 / 營業時間）
│       └── 前往地圖 → [外連] Google Maps
├── 體驗館特色（AI 六維頭皮檢測）
│   └── 六維指標：皮脂 / 頭皮屑 / 敏感度 / 毛髮量 / 毛髮直徑 / 毛孔健康
└── CTA 結尾區
    ├── 查看門市地圖 → #store-locator
    └── 了解產品系列 → /products
```

---

## 四、共用彈窗（Global Modals）

| 彈窗名稱 | 觸發位置 | 說明 |
|----------|----------|------|
| 產品詳情 Modal | 首頁產品區、綠色產品頁 | 顯示產品名稱、說明、功效、成分、永續特色，含「立即購買」外連至商店 |
| 影片播放 Modal | 首頁影音區、永續美妝頁、已參訪國家頁 | 嵌入影片播放器（YouTube / Vimeo，待確認） |

---

## 五、系統頁面

| 頁面 | 路由 | 說明 |
|------|------|------|
| 404 Not Found | `*` | 任何未定義路由皆導向此頁，文案待中文化 |

---

## 六、外部連結清單

| 項目 | URL | 說明 |
|------|-----|------|
| O'right 商店 | oright.inc/tw/products_green/1 | Navbar、產品彈窗「立即購買」 |
| O'right Pro | pro.oright.inc | Navbar |
| 口腔護理 | orightnaturaloral.com | Navbar |
| 商品驗證 | oright.inc/tw/certification | Footer |
| 隱私權政策 | oright.inc/tw/privacy | Footer 版權列 |
| Facebook | facebook.com/oright.inc | Footer 社群 |
| Instagram | instagram.com/oright_inc | Footer 社群 |
| YouTube | youtube.com/@oright | Footer 社群 |

---

## 七、開發注意事項

| 項目 | 說明 |
|------|------|
| 路由框架 | React Router v6（useRoutes） |
| 動態路由 | `/news/:id` 依 id 參數渲染對應文章 |
| 查詢參數 | `/news?category=founder` 預設篩選分類 |
| 表單送出 | 環境教育參訪、聯絡我們、跨界合作 需串接表單 API（待確認規格） |
| 地圖嵌入 | 聯絡我們、百貨體驗館 需嵌入 Google Maps |
| 影片播放 | 首頁、永續美妝、已參訪國家 需確認影片平台（YouTube / Vimeo）及影片 ID |
| SEO | 各頁面需設定獨立 `<title>` 與 `<meta description>`（文案另行提供） |
| 響應式 | 全站需支援桌機（lg）/ 平板（sm）/ 手機（預設）三斷點 |
