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
├── 體驗館特色
├── 門市列表
│   └── 門市卡片（名稱 / 地址 / 電話 / 營業時間）
│       └── 前往地圖 → [外連] Google Maps
└── CTA 結尾區
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
