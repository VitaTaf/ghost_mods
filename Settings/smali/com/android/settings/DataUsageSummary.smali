.class public Lcom/android/settings/DataUsageSummary;
.super Lcom/android/settings/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings/DataUsageSummary$AppItem;,
        Lcom/android/settings/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrict:Landroid/widget/Switch;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private mBinding:Z

.field private mChart:Lcom/android/settings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mDetailedSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private final mMobileDataEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mShowAppImmediatePkg:Ljava/lang/String;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    new-instance v0, Lcom/android/settings/DataUsageSummary$15;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$15;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/HighlightingFragment;-><init>()V

    iput v0, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$3;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    new-instance v0, Lcom/android/settings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$4;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$6;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$8;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$9;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$10;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$11;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$12;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$13;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$14;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/DataUsageSummary;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/DataUsageSummary;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/net/ChartData;

    .prologue
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$3100(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/LayoutInflater;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;)Lcom/android/settings/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/DataUsageSummary$AppItem;

    .prologue
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->handleMultiSimDataDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "isMultiSim"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v2, 0x7f09087f

    invoke-direct {p0, v0, v2}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const-string v3, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .local v1, "template":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_1

    const-string v3, "subscription"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "subId":I
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "mobile"

    goto :goto_0

    :pswitch_1
    const-string v2, "3g"

    goto :goto_0

    :pswitch_2
    const-string v2, "4g"

    goto :goto_0

    :pswitch_3
    const-string v2, "wifi"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    const v8, 0x10010

    .local v8, "flags":I
    sget-object v9, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .local v2, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v3, "test.subscriberid"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "retVal":Ljava/lang/String;
    return-object v1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .local v0, "currentTagIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {p1, v5}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-ne v1, v0, :cond_2

    .end local v0    # "currentTagIndex":I
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v0    # "currentTagIndex":I
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method private getSubId(Ljava/lang/String;)I
    .locals 6
    .param p1, "currentTab"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "subId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "subId":Ljava/lang/Integer;
    :goto_0
    return v3

    :cond_1
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTab = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " non mobile tab called this function"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method private handleMultiSimDataDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .local v2, "currentSir":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .local v3, "nextSir":Landroid/telephony/SubscriptionInfo;
    invoke-static {v1}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-direct {p0, v5, v10}, Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(IZ)V

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090997

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "previousName":Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0903f8

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0903f9

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v4, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f09017c

    new-instance v6, Lcom/android/settings/DataUsageSummary$7;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/settings/DataUsageSummary$7;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f090179

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "previousName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v2, 0x0

    .local v2, "isReady":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    const/4 v2, 0x1

    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .local v3, "retVal":Z
    :cond_3
    goto :goto_0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .local v4, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .local v3, "slotId":I
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    move v1, v5

    .local v1, "isReady":Z
    :goto_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    move v2, v5

    .local v2, "retVal":Z
    :goto_1
    return v2

    .end local v1    # "isReady":Z
    .end local v2    # "retVal":Z
    :cond_0
    move v1, v6

    goto :goto_0

    .restart local v1    # "isReady":Z
    :cond_1
    move v2, v6

    goto :goto_1
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, "resId":I
    invoke-virtual {p0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    const v2, 0x7f040076

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private initMobileTabTag(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "mobileTag":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mobileTag":Ljava/lang/String;
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataAvailable(J)Z
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .local v0, "subIds":[I
    if-eqz v0, :cond_1

    aget v3, v0, v2

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_2

    aget v3, v0, v2

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-eqz v3, :cond_0

    :cond_2
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_3

    aget v3, v0, v2

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "isEnable":Z
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isMobileTab(Ljava/lang/String;)Z
    .locals 1
    .param p0, "currentTab"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerStateChangeReceivers(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v1, Lcom/android/settings/DataUsageSummary$16;

    invoke-direct {v1, p0}, Lcom/android/settings/DataUsageSummary$16;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.intent.action.DDS_DATA_SWITCH_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->registerStateChangeReceivers(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/sim/addon/DDSUpdaterService;->startDDSUpdaterService(Landroid/content/Context;I)Z

    return-void
.end method

.method private setMobileDataEnabled(IZ)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private unregisterStateChangeReceivers(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DataUsage"

    const-string v2, "Receiver is not registered."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showRequestedAppIfNeeded()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    .local v3, "uid":I
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-direct {v0, v3}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .local v0, "app":Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-virtual {v0, v3}, Lcom/android/settings/DataUsageSummary$AppItem;->addUid(I)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    iget v5, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v1

    .local v1, "detail":Lcom/android/settings/net/UidDetail;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v6, v1, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    iget-object v4, v1, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {p0, v0, v4, v5}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "app":Lcom/android/settings/DataUsageSummary$AppItem;
    .end local v1    # "detail":Lcom/android/settings/net/UidDetail;
    .end local v3    # "uid":I
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090ab0

    invoke-virtual {p0, v5}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private updateAppDetail()V
    .locals 23

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v7

    .local v7, "detail":Lcom/android/settings/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v18, 0x0

    .local v18, "title":Landroid/view/View;
    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v14, v0

    .local v14, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v14, :cond_2

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v11, v20, v8

    .local v11, "label":Ljava/lang/CharSequence;
    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v5, v20, v8

    .local v5, "contentDescription":Ljava/lang/CharSequence;
    const v20, 0x7f040035

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    const v20, 0x7f0f0068

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "appTitle":Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v3    # "appTitle":Landroid/widget/TextView;
    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    .end local v7    # "detail":Lcom/android/settings/net/UidDetail;
    .end local v8    # "i":I
    .end local v11    # "label":Ljava/lang/CharSequence;
    .end local v14    # "n":I
    .end local v18    # "title":Landroid/view/View;
    .end local v19    # "uid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    :goto_1
    return-void

    .restart local v7    # "detail":Lcom/android/settings/net/UidDetail;
    .restart local v18    # "title":Landroid/view/View;
    .restart local v19    # "uid":I
    :cond_1
    const v20, 0x7f040035

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    const v20, 0x7f0f0068

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .restart local v3    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .end local v3    # "appTitle":Landroid/widget/TextView;
    :cond_2
    if-eqz v18, :cond_4

    const v20, 0x7f0f0069

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .local v16, "packageNames":[Ljava/lang/String;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.category.DEFAULT"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x0

    .local v13, "matchFound":Z
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v12, :cond_3

    aget-object v15, v4, v9

    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    if-eqz v20, :cond_5

    const/4 v13, 0x1

    .end local v15    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/settings/DataUsageSummary$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$5;-><init>(Lcom/android/settings/DataUsageSummary;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f09088a

    invoke-static/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f09088b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .end local v16    # "packageNames":[Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_2

    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "matchFound":Z
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "packageNames":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 14

    .prologue
    const/high16 v13, -0x1000000

    const/4 v8, 0x1

    const/4 v9, 0x0

    iput-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .local v1, "currentTab":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-nez v10, :cond_1

    move v2, v8

    .local v2, "isOwner":Z
    :goto_1
    if-nez v1, :cond_2

    const-string v8, "DataUsage"

    const-string v9, "no tab selected; hiding body"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .end local v2    # "isOwner":Z
    :cond_1
    move v2, v9

    goto :goto_1

    .restart local v2    # "isOwner":Z
    :cond_2
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v9}, Landroid/widget/ListView;->setVisibility(I)V

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    iput-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f090a69

    :goto_2
    invoke-static {v10, v8}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v10, 0x7f090879

    invoke-static {v8, v10}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v8

    int-to-long v10, v8

    invoke-direct {p0, v10, v11}, Lcom/android/settings/DataUsageSummary;->isMobileDataAvailable(J)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v8

    invoke-static {v0, v8}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-static {v11, v12}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v8, v10, v11, v12}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iput-boolean v9, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    const v8, 0x7f080038

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .local v5, "seriesColor":I
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "mobile"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v9, "mobile"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .local v7, "slotId":I
    invoke-static {v0, v7}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .local v6, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v5

    .end local v6    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "slotId":I
    :cond_3
    const/16 v8, 0x7f

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .local v4, "secondaryColor":I
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v8, v13, v5, v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDetailedSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v8, v13, v5, v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    goto/16 :goto_0

    .end local v4    # "secondaryColor":I
    .end local v5    # "seriesColor":I
    :cond_4
    const v8, 0x7f090884

    goto/16 :goto_2

    :cond_5
    const-string v8, "3g"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v10, 0x7f090885

    invoke-static {v8, v10}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v10, 0x7f09087b

    invoke-static {v8, v10}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_3

    :cond_6
    const-string v8, "4g"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v10, 0x7f090886

    invoke-static {v8, v10}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v10, 0x7f09087a

    invoke-static {v8, v10}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_3

    :cond_7
    const-string v8, "wifi"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iput-boolean v9, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    iput-boolean v9, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_3

    :cond_8
    const-string v8, "ethernet"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iput-boolean v9, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    iput-boolean v9, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_3

    :cond_9
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown tab: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 25
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/DataUsageSummary$CycleItem;

    .local v17, "previousItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    .local v5, "context":Landroid/content/Context;
    const-wide v20, 0x7fffffffffffffffL

    .local v20, "historyStart":J
    const-wide/high16 v18, -0x8000000000000000L

    .local v18, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .local v22, "now":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v20, v10

    if-nez v4, :cond_1

    move-wide/from16 v20, v22

    :cond_1
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v4, v18, v10

    if-nez v4, :cond_2

    const-wide/16 v10, 0x1

    add-long v18, v22, v10

    :cond_2
    const/16 v16, 0x0

    .local v16, "hasCycles":Z
    if-eqz p1, :cond_4

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v20

    if-lez v4, :cond_3

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .local v6, "cycleStart":J
    const-string v4, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generating cs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to ce="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " waiting for hs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v8, v6

    const/16 v16, 0x1

    goto :goto_0

    .end local v6    # "cycleStart":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .end local v8    # "cycleEnd":J
    :cond_4
    if-nez v16, :cond_6

    move-wide/from16 v8, v18

    .restart local v8    # "cycleEnd":J
    :goto_1
    cmp-long v4, v8, v20

    if-lez v4, :cond_5

    const-wide v10, 0x90321000L

    sub-long v6, v8, v10

    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v8, v6

    goto :goto_1

    .end local v6    # "cycleStart":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .end local v8    # "cycleEnd":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v13

    .local v13, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v13}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v13}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings/DataUsageSummary$CycleItem;

    .local v24, "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v10 .. v15}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :goto_2
    return-void

    .restart local v13    # "position":I
    .restart local v24    # "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_2

    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_2
.end method

.method private updateDetailData()V
    .locals 26

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v12, v14

    .local v20, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v12, v14

    .local v22, "foregroundBytes":J
    add-long v24, v20, v22

    .local v24, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f0c0018

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f0c0018

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v11, v3, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    .end local v24    # "totalBytes":J
    :goto_2
    if-eqz v10, :cond_6

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v12, v14

    .restart local v24    # "totalBytes":J
    :goto_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f0c0018

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .local v19, "totalPhrase":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->ensureLayoutTransitions()V

    return-void

    .end local v19    # "totalPhrase":Ljava/lang/String;
    .restart local v20    # "defaultBytes":J
    .restart local v22    # "foregroundBytes":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    .end local v24    # "totalBytes":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v11, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_2

    :cond_6
    const-wide/16 v24, 0x0

    goto/16 :goto_3

    .restart local v24    # "totalBytes":J
    :cond_7
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "totalPhrase":Ljava/lang/String;
    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private updateMenuTitles()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f090865

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f090868

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f09086a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f090864

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f090867

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f090869

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 12
    .param p1, "refreshCycle"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .local v1, "disableAtLimitVisible":Z
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v4, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    :cond_1
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .local v2, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DataUsageSummary;->isMobileDataAvailable(J)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v2, :cond_4

    iget-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    :cond_3
    return-void

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_3
.end method

.method private updateTabs()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->clearAllTabs()V

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .local v4, "simCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_0

    if-le v4, v7, :cond_1

    move v6, v7

    :goto_1
    invoke-direct {p0, v0, v5, v6}, Lcom/android/settings/DataUsageSummary;->addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    iget-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v6, :cond_3

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "wifi"

    const v10, 0x7f09087d

    invoke-direct {p0, v9, v10}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_3
    iget-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "ethernet"

    const v10, 0x7f09087e

    invoke-direct {p0, v9, v10}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_4
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-nez v6, :cond_6

    move v3, v7

    .local v3, "noTabs":Z
    :goto_2
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-le v6, v7, :cond_7

    move v2, v7

    .local v2, "multipleTabs":Z
    :goto_3
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_8

    :goto_4
    invoke-virtual {v6, v8}, Landroid/widget/TabWidget;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    :goto_5
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    :cond_5
    :goto_6
    return-void

    .end local v2    # "multipleTabs":Z
    .end local v3    # "noTabs":Z
    :cond_6
    move v3, v8

    goto :goto_2

    .restart local v3    # "noTabs":Z
    :cond_7
    move v2, v8

    goto :goto_3

    .restart local v2    # "multipleTabs":Z
    :cond_8
    const/16 v8, 0x8

    goto :goto_4

    :cond_9
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    goto :goto_6
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "data_usage"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v3, v4}, Lcom/android/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v3}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/settings/DataUsageSummary;->initMobileTabTag(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DataUsage"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_wifi"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_ethernet"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    :cond_1
    new-instance v3, Lcom/android/settings/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/settings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v3, "showAppImmediatePkg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->setHasOptionsMenu(Z)V

    return-void

    .end local v0    # "arguments":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "DataUsage"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x7f0f0000

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f04003f

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .local v3, "view":Landroid/view/View;
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const v4, 0x7f0f007e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v4

    const/high16 v7, 0x2000000

    if-ne v4, v7, :cond_1

    move v1, v5

    .local v1, "shouldInset":Z
    :goto_0
    iput v6, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v6}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const v4, 0x7f04003d

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v10, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v10, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget v4, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v7}, Lcom/android/settings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    iget v8, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v4, v7, v6, v8, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0f007a

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0f007b

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const-string v7, "data_usage_enable_mobile"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const-string v7, "data_usage_disable_mobile_limit"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v4, 0x7f04003b

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const-string v7, "data_usage_cycle"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f0f0073

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f0f0074

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v4, 0x7f0f006e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const v4, 0x7f0f006f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDetailedSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0f006c

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/ChartDataUsageView;->setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v4, v10}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0f0075

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f000c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f0076

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f0077

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f0078

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f0079

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f000e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-static {p1, v4, v6}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0f007c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0f007d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .local v2, "um":Landroid/os/UserManager;
    new-instance v4, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    iget v6, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/settings/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->showRequestedAppIfNeeded()V

    return-object v3

    .end local v1    # "shouldInset":Z
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_1
    move v1, v6

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->unregisterStateChangeReceivers(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings/net/UidDetailProvider;->clearCache()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v9, v6

    :goto_0
    :pswitch_0
    return v9

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v9

    .local v8, "restrictBackground":Z
    :goto_1
    if-eqz v8, :cond_1

    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    .end local v8    # "restrictBackground":Z
    :cond_0
    move v8, v6

    goto :goto_1

    .restart local v8    # "restrictBackground":Z
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .end local v8    # "restrictBackground":Z
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-nez v1, :cond_2

    move v6, v9

    :cond_2
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-nez v1, :cond_3

    move v6, v9

    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0908a5

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isShowingSizeInGB(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v9

    :goto_2
    invoke-static {v2, v1}, Lcom/android/settings/Utils;->setShowSizeInGB(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    goto/16 :goto_0

    :cond_4
    move v1, v6

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x7f0f02a8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .local v0, "appDetailMode":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-nez v9, :cond_2

    move v4, v7

    .local v4, "isOwner":Z
    :goto_0
    const v9, 0x7f0f02a9

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_3

    move v9, v7

    :goto_1
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    const v9, 0x7f0f02aa

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-virtual {p0, v1}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_5

    move v9, v7

    :goto_3
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_4
    const v9, 0x7f0f02a8

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    move v9, v7

    :goto_5
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v9, 0x7f0f02ab

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .local v6, "metered":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_0
    if-nez v0, :cond_8

    move v9, v7

    :goto_6
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_7
    const v9, 0x7f0f02ac

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v9, 0x7f0f02ad

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-nez v0, :cond_a

    if-eqz v4, :cond_a

    move v9, v7

    :goto_8
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v9, 0x7f0f02af

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .local v2, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090938

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "helpUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v1, v2, v3}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    :goto_9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x7f0f02ae

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .local v5, "item":Landroid/view/MenuItem;
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/Utils;->isShowingSizeInGB(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, 0x7f09006a

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .end local v5    # "item":Landroid/view/MenuItem;
    :cond_1
    :goto_a
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    return-void

    .end local v2    # "help":Landroid/view/MenuItem;
    .end local v3    # "helpUrl":Ljava/lang/String;
    .end local v4    # "isOwner":Z
    .end local v6    # "metered":Landroid/view/MenuItem;
    :cond_2
    move v4, v8

    goto/16 :goto_0

    .restart local v4    # "isOwner":Z
    :cond_3
    move v9, v8

    goto/16 :goto_1

    :cond_4
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_5
    move v9, v8

    goto/16 :goto_3

    :cond_6
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_7
    move v9, v8

    goto/16 :goto_5

    .restart local v6    # "metered":Landroid/view/MenuItem;
    :cond_8
    move v9, v8

    goto/16 :goto_6

    :cond_9
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    :cond_a
    move v9, v8

    goto :goto_8

    .restart local v2    # "help":Landroid/view/MenuItem;
    .restart local v3    # "helpUrl":Ljava/lang/String;
    :cond_b
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    .restart local v5    # "item":Landroid/view/MenuItem;
    :cond_c
    const v7, 0x7f090069

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_a
.end method

.method public onResume()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DataUsageSummary$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DataUsageSummary$1;-><init>(Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/settings/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$2;-><init>(Lcom/android/settings/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    return-void
.end method

.method public refreshDataSwitchState()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    return-void
.end method
