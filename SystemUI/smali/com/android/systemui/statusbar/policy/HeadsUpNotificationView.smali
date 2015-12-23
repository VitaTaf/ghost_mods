.class public Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
.super Landroid/widget/FrameLayout;
.source "HeadsUpNotificationView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Lcom/android/systemui/SwipeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;
    }
.end annotation


# static fields
.field private static final CONTENT_HOLDER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mContentHolder:Landroid/view/ViewGroup;

.field private final mDefaultSnoozeLengthMs:I

.field private mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

.field private mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private final mMaxAlpha:F

.field private mMostRecentPackageName:Ljava/lang/String;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSnoozeLengthMs:I

.field private final mSnoozedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTouchTime:J

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpTwoArray:[I

.field private final mTouchSensitivityDelay:I

.field private mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->CONTENT_HOLDER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpRect:Landroid/graphics/Rect;

    .line 57
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    .line 60
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mMaxAlpha:F

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTouchSensitivityDelay:I

    .line 87
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedPackages:Landroid/util/ArrayMap;

    .line 88
    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mDefaultSnoozeLengthMs:I

    .line 89
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mDefaultSnoozeLengthMs:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->snooze()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method private snooze()V
    .locals 6

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mMostRecentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedPackages:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mMostRecentPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mUser:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->snoozeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    .line 208
    return-void
.end method

.method private static snoozeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # I

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    .line 167
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onNotificationClear(Landroid/service/notification/StatusBarNotification;)V

    .line 177
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    goto :goto_1
.end method

.method public expansionStateChanged(Z)V
    .locals 0
    .param p1, "isExpanding"    # Z

    .prologue
    .line 369
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .prologue
    .line 385
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getHolder()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public isClearable()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSnoozed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 190
    iget v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mUser:I

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->snoozeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 192
    .local v1, "snoozedUntil":Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 195
    const/4 v2, 0x1

    .line 199
    :goto_0
    return v2

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 246
    .local v3, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v2, v4

    .line 247
    .local v2, "touchSlop":F
    new-instance v4, Lcom/android/systemui/SwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v7, p0, v5}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 248
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/android/systemui/SwipeHelper;->setMaxSwipeProgress(F)V

    .line 249
    new-instance v4, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;F)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 252
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 254
    .local v0, "maxHeight":I
    const v4, 0x7f0f003b

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    .line 255
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->CONTENT_HOLDER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 257
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "heads_up_snooze_length_ms"

    iget v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mDefaultSnoozeLengthMs:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I

    .line 259
    new-instance v4, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$2;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$2;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 270
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "heads_up_snooze_length_ms"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 281
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 396
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 390
    const-string v0, "HeadsUpNotificationView"

    const-string v1, "User swiped heads up to dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onHeadsUpDismissed()V

    .line 392
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;)V
    .locals 0
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    .line 405
    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 427
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 428
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 431
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 330
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 332
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 333
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 286
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 401
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 313
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetHeadsUpDecayTimer()V

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->sendAccessibilityEvent(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->displayNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)V

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 187
    return-void
.end method

.method public releaseAndClose()V
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    .line 217
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 103
    return-void
.end method

.method public setUser(I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
    .line 442
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mUser:I

    .line 443
    return-void
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 357
    :cond_0
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 364
    :cond_0
    return-void
.end method

.method public showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 9
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mMostRecentPackageName:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move v3, v2

    move-wide v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHideSensitive(ZZJJ)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 148
    :goto_0
    return v2

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    const/16 v1, 0x800

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->sendAccessibilityEvent(I)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTouchSensitivityDelay:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpOpen()V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetHeadsUpDecayTimer()V

    :cond_3
    move v2, v0

    .line 148
    goto :goto_0
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 95
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 2
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 410
    const/4 v0, 0x0

    return v0
.end method
