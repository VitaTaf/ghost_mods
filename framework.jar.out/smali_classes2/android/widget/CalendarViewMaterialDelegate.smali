.class Landroid/widget/CalendarViewMaterialDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewMaterialDelegate.java"


# instance fields
.field private final mDayPickerView:Landroid/widget/DayPickerView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    new-instance v4, Landroid/widget/CalendarViewMaterialDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/CalendarViewMaterialDelegate$1;-><init>(Landroid/widget/CalendarViewMaterialDelegate;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    sget-object v4, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .local v10, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v5

    iget-object v5, v5, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .local v12, "firstDayOfWeek":I
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "01/01/1900"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/widget/CalendarViewMaterialDelegate;->parseDateToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .local v6, "minDate":J
    const/4 v4, 0x3

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "01/01/2100"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/widget/CalendarViewMaterialDelegate;->parseDateToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .local v8, "maxDate":J
    cmp-long v4, v8, v6

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "max date cannot be before min date"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v4 .. v9}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v14

    .local v14, "setDate":J
    const/16 v4, 0xc

    const v5, 0x10301b3

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .local v11, "dateTextAppearanceResId":I
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Landroid/widget/DayPickerView;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v4, v12}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v4, v11}, Landroid/widget/DayPickerView;->setCalendarTextAppearance(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v4, v6, v7}, Landroid/widget/DayPickerView;->setMinDate(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v4, v8, v9}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    const/4 v5, 0x0

    const/4 v13, 0x1

    invoke-virtual {v4, v14, v15, v5, v13}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewMaterialDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method private parseDateToMillis(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "defaultDateStr"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "tempCalendar":Ljava/util/Calendar;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/widget/CalendarViewMaterialDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, p2, v0}, Landroid/widget/CalendarViewMaterialDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    return-void
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "date"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .locals 1
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    return-void
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "maxDate"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "minDate"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    return-void
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .prologue
    iput-object p1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 0
    .param p1, "showWeekNumber"    # Z

    .prologue
    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    return-void
.end method
