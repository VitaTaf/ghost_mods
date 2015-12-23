.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
    }
.end annotation


# static fields
.field public static final BACK_DISPOSITION_DEFAULT:I = 0x0

.field public static final BACK_DISPOSITION_WILL_DISMISS:I = 0x2

.field public static final BACK_DISPOSITION_WILL_NOT_DISMISS:I = 0x1

.field static final DEBUG:Z = false

.field public static final IME_ACTIVE:I = 0x1

.field public static final IME_VISIBLE:I = 0x2

.field static final MOVEMENT_DOWN:I = -0x1

.field static final MOVEMENT_UP:I = -0x2

.field static final TAG:Ljava/lang/String; = "InputMethodService"


# instance fields
.field final mActionClickListener:Landroid/view/View$OnClickListener;

.field mBackDisposition:I

.field mCandidatesFrame:Landroid/widget/FrameLayout;

.field mCandidatesViewStarted:Z

.field mCandidatesVisibility:I

.field mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mExtractAccessories:Landroid/view/ViewGroup;

.field mExtractAction:Landroid/widget/Button;

.field mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field mExtractFrame:Landroid/widget/FrameLayout;

.field mExtractView:Landroid/view/View;

.field mExtractViewHidden:Z

.field mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field mExtractedToken:I

.field mFullscreenApplied:Z

.field mFullscreenArea:Landroid/view/ViewGroup;

.field mHardwareAccelerated:Z

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field mInputBinding:Landroid/view/inputmethod/InputBinding;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;

.field mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mInputFrame:Landroid/widget/FrameLayout;

.field mInputStarted:Z

.field mInputView:Landroid/view/View;

.field mInputViewStarted:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field mIsFullscreen:Z

.field mIsInputViewShown:Z

.field mLastShowInputRequested:Z

.field mRootView:Landroid/view/View;

.field mShowInputFlags:I

.field mShowInputForced:Z

.field mShowInputRequested:Z

.field mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mStatusIcon:I

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I

.field mToken:Landroid/os/IBinder;

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowCreated:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    .line 262
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 263
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    .line 314
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 315
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 317
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 338
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 560
    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p0, "x0"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    return-void
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodService;II)V
    .locals 0
    .param p0, "x0"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method private doHideWindow()V
    .locals 7

    .prologue
    .line 1546
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1547
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1549
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1550
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1551
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getMaxWidth()I

    move-result v2

    .line 1552
    .local v2, "realWidth":I
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_0

    .line 1553
    iput v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1554
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1559
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "realWidth":I
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1560
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1561
    return-void
.end method

.method private finishViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1531
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_1

    .line 1533
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1538
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1539
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1540
    return-void

    .line 1534
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method private handleBack(Z)Z
    .locals 4
    .param p1, "doIt"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1810
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v3, :cond_2

    .line 1811
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    instance-of v3, v3, Landroid/inputmethodservice/ExtractEditLayout;

    if-eqz v3, :cond_1

    .line 1812
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    check-cast v0, Landroid/inputmethodservice/ExtractEditLayout;

    .line 1813
    .local v0, "extractEditLayout":Landroid/inputmethodservice/ExtractEditLayout;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout;->isActionModeStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1814
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout;->finishActionMode()V

    .line 1835
    .end local v0    # "extractEditLayout":Landroid/inputmethodservice/ExtractEditLayout;
    :cond_0
    :goto_0
    return v1

    .line 1820
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto :goto_0

    .line 1822
    :cond_2
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v3, :cond_4

    .line 1823
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v3, :cond_3

    .line 1826
    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 1831
    :cond_3
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1835
    goto :goto_0
.end method

.method private onToggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    .line 1942
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1943
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 1947
    :goto_0
    return-void

    .line 1945
    :cond_0
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    goto :goto_0
.end method

.method private requestShowSelf(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1806
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1807
    return-void
.end method


# virtual methods
.method doFinishInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1628
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_2

    .line 1630
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1635
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1636
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1637
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_1

    .line 1639
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1641
    :cond_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1642
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1643
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1644
    return-void

    .line 1631
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_0

    .line 1633
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method doMovementKey(ILandroid/view/KeyEvent;I)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "count"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1972
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1973
    .local v1, "eet":Landroid/inputmethodservice/ExtractEditText;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v1, :cond_3

    .line 1977
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v3

    .line 1978
    .local v3, "movement":Landroid/text/method/MovementMethod;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1979
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 1982
    const/4 v7, -0x1

    if-ne p3, v7, :cond_1

    .line 1983
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1985
    invoke-virtual {p0, p1, v5}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 2025
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 1988
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_1
    const/4 v7, -0x2

    if-ne p3, v7, :cond_4

    .line 1989
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2016
    :cond_2
    :goto_1
    packed-switch p1, :pswitch_data_0

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_3
    move v5, v6

    .line 2025
    goto :goto_0

    .line 1994
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_4
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1995
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_1

    .line 1997
    :cond_5
    invoke-static {p2, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1998
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2000
    invoke-static {p2, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    .line 2001
    .local v4, "up":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 2003
    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_6

    .line 2004
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 2006
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2

    .line 2009
    :cond_6
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_1

    .line 2016
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1647
    if-nez p3, :cond_0

    .line 1648
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1650
    :cond_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1651
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1652
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1653
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1655
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1656
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_1

    .line 1657
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_2

    .line 1659
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1660
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1661
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1668
    :cond_1
    :goto_0
    return-void

    .line 1662
    :cond_2
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_1

    .line 1664
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1665
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2427
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2428
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method service state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWindowCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowWasVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInShowWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Configuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStartedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInputViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCandidatesViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2443
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 2444
    const-string v1, "  mInputEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2445
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2450
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputForced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCandidatesVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFullscreenApplied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsFullscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExtractViewHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2459
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_1

    .line 2460
    const-string v1, "  mExtractedText:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    selectionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2469
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExtractedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsInputViewShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatusIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2472
    const-string v1, "Last computed insets:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  contentTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibleTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2477
    return-void

    .line 2447
    :cond_0
    const-string v1, "  mInputEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2467
    :cond_1
    const-string v1, "  mExtractedText: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public enableHardwareAcceleration()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 657
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v1, :cond_0

    .line 658
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    .line 664
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackDisposition()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return v0
.end method

.method public getCandidatesHiddenVisibility()I
    .locals 1

    .prologue
    .line 1183
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 883
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 886
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-object v0

    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    goto :goto_0
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public getInputMethodWindowRecommendedHeight()I
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 865
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 866
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public getTextForImeAction(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 2244
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2260
    const v0, 0x104053d

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2246
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2248
    :pswitch_1
    const v0, 0x1040537

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2250
    :pswitch_2
    const v0, 0x1040538

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2252
    :pswitch_3
    const v0, 0x1040539

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2254
    :pswitch_4
    const v0, 0x104053a

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2256
    :pswitch_5
    const v0, 0x104053b

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2258
    :pswitch_6
    const v0, 0x104053c

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hideStatusIcon()V
    .locals 2

    .prologue
    .line 1192
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1193
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideStatusIcon(Landroid/os/IBinder;)V

    .line 1194
    return-void
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1564
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    .line 1565
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 1567
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1568
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1569
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1571
    :cond_0
    return-void
.end method

.method initViews()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 706
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 707
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 708
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 709
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    .line 711
    sget-object v0, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 712
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109005b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 714
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 716
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 717
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 718
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fancy_ime_animations"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10302e2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 723
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x1020310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 724
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 725
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    .line 726
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 727
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 728
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 729
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    .line 730
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 732
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    .line 733
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 734
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 735
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 737
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 738
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 739
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 741
    return-void
.end method

.method initialize()V
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 701
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 703
    :cond_0
    return-void
.end method

.method public isExtractViewShown()Z
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public isInputViewShown()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowInputRequested()Z
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1935
    return-void
.end method

.method public onBindInput()V
    .locals 0

    .prologue
    .line 1599
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    const/4 v3, 0x1

    .line 1071
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 1072
    .local v1, "loc":[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1073
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1078
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1080
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1081
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1085
    .end local v0    # "decor":Landroid/view/View;
    :goto_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1086
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1088
    :cond_0
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 1089
    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 1090
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 1091
    return-void

    .line 1075
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1076
    .restart local v0    # "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    .line 1083
    .end local v0    # "decor":Landroid/view/View;
    :cond_2
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 774
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 776
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 777
    .local v4, "visible":Z
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 778
    .local v1, "showFlags":I
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 779
    .local v3, "showingInput":Z
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 780
    .local v0, "completions":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 781
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 782
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 783
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v6, :cond_0

    .line 784
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 787
    :cond_0
    if-eqz v4, :cond_3

    .line 788
    if-eqz v3, :cond_5

    .line 790
    invoke-virtual {p0, v1, v8}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 791
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 792
    if-eqz v0, :cond_1

    .line 793
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 794
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 808
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v2

    .line 809
    .local v2, "showing":Z
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    const/4 v5, 0x2

    :cond_2
    or-int/lit8 v5, v5, 0x1

    iget v8, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v6, v7, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 812
    .end local v2    # "showing":Z
    :cond_3
    return-void

    .line 797
    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0

    .line 799
    :cond_5
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v6, :cond_6

    .line 802
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_0

    .line 805
    :cond_6
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 6
    .param p1, "win"    # Landroid/view/Window;
    .param p2, "isFullscreen"    # Z
    .param p3, "isCandidatesOnly"    # Z

    .prologue
    const/4 v2, -0x1

    .line 965
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 966
    .local v0, "currentHeight":I
    if-eqz p2, :cond_1

    move v1, v2

    .line 967
    .local v1, "newHeight":I
    :goto_0
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v3, :cond_0

    if-eq v0, v1, :cond_0

    .line 968
    const-string v3, "InputMethodService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window size has been changed. This may cause jankiness of resizing window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 972
    return-void

    .line 966
    .end local v1    # "newHeight":I
    :cond_1
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v4, 0x103013e

    .line 668
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const v2, 0x1030054

    const v3, 0x103007f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 674
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-super {p0, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    .line 675
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    .line 676
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 677
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 679
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    const-string v2, "InputMethod"

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    const/16 v7, 0x7db

    const/16 v8, 0x50

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, v10

    move-object v5, v10

    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 681
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 684
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 685
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 686
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1280
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 3

    .prologue
    .line 1265
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 1

    .prologue
    .line 820
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .locals 1

    .prologue
    .line 829
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1295
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 2405
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 744
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    .line 745
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 747
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 748
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 753
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    .line 755
    :cond_0
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1700
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 992
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 993
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return v1

    .line 996
    :cond_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 1000
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1141
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1142
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v1, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onExtractTextContextMenuItem(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2225
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2226
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2227
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 2229
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onExtractedCursorMovement(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 2208
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 2214
    :cond_0
    :goto_0
    return-void

    .line 2211
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public onExtractedDeleteText(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2147
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2148
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2149
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2150
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2152
    :cond_0
    return-void
.end method

.method public onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2158
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2159
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2160
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 2161
    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2163
    :cond_0
    return-void
.end method

.method public onExtractedSelectionChanged(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2137
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2138
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2139
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2141
    :cond_0
    return-void
.end method

.method public onExtractedSetSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v5, 0x1

    .line 2169
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2170
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2171
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2172
    :cond_1
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2173
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 2174
    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, p1, v3, v4, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2175
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 2176
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 2189
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2192
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2336
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    .line 2337
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2339
    :cond_0
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 1372
    if-nez p1, :cond_0

    .line 1373
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1374
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1375
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1378
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 1683
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1684
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1685
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1687
    :cond_0
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 1327
    if-nez p1, :cond_0

    .line 1328
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1329
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1330
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1333
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1931
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeInterface()V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1852
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1853
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1854
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1855
    const/4 v0, 0x1

    .line 1859
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1868
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1884
    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1900
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1902
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v0

    .line 1905
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onShowInputRequested(IZ)Z
    .locals 4
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1396
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return v1

    .line 1399
    :cond_1
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_3

    .line 1400
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1408
    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1409
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v3, v2, :cond_0

    .line 1416
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_3
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4

    .line 1417
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    :cond_4
    move v1, v2

    .line 1419
    goto :goto_0
.end method

.method public onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1356
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1625
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1311
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1918
    const/4 v0, 0x0

    return v0
.end method

.method public onUnbindInput()V
    .locals 0

    .prologue
    .line 1609
    return-void
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "newCursor"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1773
    return-void
.end method

.method public onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .prologue
    .line 1784
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 1709
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_1

    .line 1718
    :cond_0
    :goto_0
    return-void

    .line 1712
    :cond_1
    if-eqz p2, :cond_0

    .line 1713
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_0

    .line 1714
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 1715
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method public onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2300
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2327
    :cond_0
    :goto_0
    return-void

    .line 2304
    :cond_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2307
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v0, :cond_3

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_3

    .line 2311
    .local v0, "hasAction":Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 2312
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2313
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 2314
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 2315
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2319
    :goto_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v0    # "hasAction":Z
    :cond_3
    move v0, v1

    .line 2307
    goto :goto_1

    .line 2317
    .restart local v0    # "hasAction":Z
    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2322
    :cond_5
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2323
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 2324
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2274
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2277
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 2282
    :goto_0
    return-void

    .line 2281
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    goto :goto_0
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 4
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 1737
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1738
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v3, :cond_2

    .line 1739
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1740
    .local v2, "off":I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 1741
    sub-int/2addr p3, v2

    .line 1742
    sub-int/2addr p4, v2

    .line 1743
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1744
    .local v1, "len":I
    if-gez p3, :cond_3

    const/4 p3, 0x0

    .line 1746
    :cond_0
    :goto_0
    if-gez p4, :cond_4

    const/4 p4, 0x0

    .line 1748
    :cond_1
    :goto_1
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    .line 1749
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 1751
    .end local v1    # "len":I
    .end local v2    # "off":I
    :cond_2
    return-void

    .line 1745
    .restart local v1    # "len":I
    .restart local v2    # "off":I
    :cond_3
    if-le p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    .line 1747
    :cond_4
    if-le p4, v1, :cond_1

    move p4, v1

    goto :goto_1
.end method

.method public onViewClicked(Z)V
    .locals 0
    .param p1, "focusChanged"    # Z

    .prologue
    .line 1762
    return-void
.end method

.method public onWindowHidden()V
    .locals 0

    .prologue
    .line 1588
    return-void
.end method

.method public onWindowShown()V
    .locals 0

    .prologue
    .line 1580
    return-void
.end method

.method reportExtractedMovement(II)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "count"    # I

    .prologue
    .line 1953
    const/4 v0, 0x0

    .local v0, "dx":I
    const/4 v1, 0x0

    .line 1954
    .local v1, "dy":I
    packed-switch p1, :pswitch_data_0

    .line 1968
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    .line 1969
    return-void

    .line 1956
    :pswitch_0
    neg-int v0, p2

    .line 1957
    goto :goto_0

    .line 1959
    :pswitch_1
    move v0, p2

    .line 1960
    goto :goto_0

    .line 1962
    :pswitch_2
    neg-int v1, p2

    .line 1963
    goto :goto_0

    .line 1965
    :pswitch_3
    move v1, p2

    goto :goto_0

    .line 1954
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestHideSelf(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1795
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1796
    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .locals 5
    .param p1, "fromEnterKey"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2076
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2077
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    :cond_0
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v2, :cond_2

    .line 2085
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2086
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 2087
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 2092
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13
    .param p1, "keyEventCode"    # I

    .prologue
    .line 2048
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2049
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 2057
    :goto_0
    return-void

    .line 2050
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2051
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2054
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public sendKeyChar(C)V
    .locals 3
    .param p1, "charCode"    # C

    .prologue
    const/4 v2, 0x1

    .line 2110
    packed-switch p1, :pswitch_data_0

    .line 2118
    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 2119
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 2112
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2113
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 2121
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2122
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2123
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 2110
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public setBackDisposition(I)V
    .locals 0
    .param p1, "disposition"    # I

    .prologue
    .line 841
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 842
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1238
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1239
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1242
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1151
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1152
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eq v0, p1, :cond_0

    .line 1156
    if-eqz p1, :cond_1

    .line 1157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0
.end method

.method public setExtractView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1208
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1209
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 1213
    if-eqz p1, :cond_1

    .line 1214
    const v0, 0x1020025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1216
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    .line 1217
    const v0, 0x1020312

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    .line 1219
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1220
    const v0, 0x1020311

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1223
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1229
    :goto_0
    return-void

    .line 1225
    :cond_1
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1226
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1227
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    goto :goto_0
.end method

.method public setExtractViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1013
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_0

    .line 1014
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 1015
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 1017
    :cond_0
    return-void

    .line 1014
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1252
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 1256
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 638
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 642
    return-void
.end method

.method public showStatusIcon(I)V
    .locals 3
    .param p1, "iconResId"    # I

    .prologue
    .line 1187
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1188
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1189
    return-void
.end method

.method public showWindow(Z)V
    .locals 11
    .param p1, "showInput"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1431
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1432
    .local v0, "config":Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1433
    const/4 v3, 0x0

    .line 1434
    .local v3, "hasMenuBarShown":Z
    const-string/jumbo v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    .line 1436
    .local v6, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v6}, Landroid/view/IWindowManager;->hasMenuBarShown()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1441
    :goto_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1442
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1443
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getMaxWidth()I

    move-result v5

    .line 1444
    .local v5, "realWidth":I
    if-eqz v3, :cond_1

    .line 1445
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v5, v7, :cond_0

    .line 1446
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1448
    .local v4, "navWidth":I
    sub-int v7, v5, v4

    iput v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1449
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1460
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "hasMenuBarShown":Z
    .end local v4    # "navWidth":I
    .end local v5    # "realWidth":I
    .end local v6    # "wm":Landroid/view/IWindowManager;
    :cond_0
    :goto_1
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    if-eqz v7, :cond_2

    .line 1461
    const-string v7, "InputMethodService"

    const-string v8, "Re-entrance in to showWindow"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :goto_2
    return-void

    .line 1437
    .restart local v3    # "hasMenuBarShown":Z
    .restart local v6    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v2

    .line 1438
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "InputMethodService"

    const-string v8, "Failed to get whether current window has menubar"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1452
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "realWidth":I
    :cond_1
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v5, v7, :cond_0

    .line 1453
    iput v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1454
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 1466
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "hasMenuBarShown":Z
    .end local v5    # "realWidth":I
    .end local v6    # "wm":Landroid/view/IWindowManager;
    :cond_2
    :try_start_1
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1467
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1468
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindowInner(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1470
    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1471
    iput-boolean v10, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    goto :goto_2

    .line 1470
    :catchall_0
    move-exception v7

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1471
    iput-boolean v10, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    throw v7
.end method

.method showWindowInner(Z)V
    .locals 7
    .param p1, "showInput"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1476
    const/4 v0, 0x0

    .line 1477
    .local v0, "doShowInput":Z
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1478
    .local v2, "wasVisible":Z
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1479
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v3, :cond_6

    .line 1480
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v3, :cond_0

    .line 1481
    if-eqz p1, :cond_0

    .line 1482
    const/4 v0, 0x1

    .line 1483
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1491
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1492
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 1493
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 1495
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    if-nez v3, :cond_2

    .line 1496
    :cond_1
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    .line 1497
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 1498
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1500
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v1

    .line 1502
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1503
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    .line 1506
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v3, :cond_7

    .line 1507
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v3, :cond_3

    .line 1509
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1510
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v3, v4}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1518
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1519
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1522
    :cond_4
    if-nez v2, :cond_5

    .line 1524
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1525
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 1526
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 1528
    :cond_5
    return-void

    .line 1487
    :cond_6
    const/4 p1, 0x1

    goto :goto_0

    .line 1512
    :cond_7
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-nez v3, :cond_3

    .line 1514
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1515
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v3, v4}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_1
.end method

.method startExtractingText(Z)V
    .locals 9
    .param p1, "inputChanged"    # Z

    .prologue
    const/4 v8, 0x1

    .line 2342
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2343
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2345
    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    .line 2346
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2347
    .local v4, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v5, v4, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 2348
    iput v8, v4, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 2349
    const/16 v5, 0xa

    iput v5, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 2350
    const/16 v5, 0x2710

    iput v5, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 2351
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2352
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_4

    const/4 v5, 0x0

    :goto_0
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 2354
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 2355
    :cond_0
    const-string v5, "InputMethodService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected null in startExtractingText : mExtractedText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", input connection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2361
    .local v1, "ei":Landroid/view/inputmethod/EditorInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 2362
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    .line 2363
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    .line 2364
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2365
    .local v3, "inputType":I
    and-int/lit8 v5, v3, 0xf

    if-ne v5, v8, :cond_2

    .line 2367
    const/high16 v5, 0x40000

    and-int/2addr v5, v3

    if-eqz v5, :cond_2

    .line 2368
    const/high16 v5, 0x20000

    or-int/2addr v3, v5

    .line 2371
    :cond_2
    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    .line 2372
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2373
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_5

    .line 2374
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2375
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2381
    :goto_1
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 2384
    if-eqz p1, :cond_3

    .line 2385
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    .line 2388
    .end local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "inputType":I
    .end local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_3
    return-void

    .line 2352
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_4
    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    goto :goto_0

    .line 2377
    .restart local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v3    # "inputType":I
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2378
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2381
    .end local v3    # "inputType":I
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    throw v5
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1204
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method updateCandidatesVisibility(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 1165
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1166
    .local v0, "vis":I
    :goto_0
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v1, v0, :cond_0

    .line 1167
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1168
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 1170
    :cond_0
    return-void

    .line 1165
    .end local v0    # "vis":I
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    goto :goto_0
.end method

.method updateExtractFrameVisibility()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1035
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1036
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x4

    .line 1038
    .local v1, "vis":I
    :goto_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1043
    :goto_1
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1044
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1045
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1049
    .local v0, "animRes":I
    if-eqz v0, :cond_0

    .line 1050
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1054
    .end local v0    # "animRes":I
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1055
    return-void

    .end local v1    # "vis":I
    :cond_1
    move v1, v2

    .line 1036
    goto :goto_0

    .line 1040
    :cond_2
    const/4 v1, 0x0

    .line 1041
    .restart local v1    # "vis":I
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v3, v2

    .line 1043
    goto :goto_2

    .line 1045
    :cond_4
    const/4 v4, 0x2

    goto :goto_3
.end method

.method public updateFullscreenMode()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 906
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v6

    .line 907
    .local v2, "isFullscreen":Z
    :goto_0
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v5, v8, :cond_7

    move v0, v6

    .line 908
    .local v0, "changed":Z
    :goto_1
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v5, v2, :cond_0

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    if-nez v5, :cond_4

    .line 909
    :cond_0
    const/4 v0, 0x1

    .line 910
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 911
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 912
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 913
    :cond_1
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 914
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 915
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 917
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_8

    .line 918
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 920
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 921
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 927
    :goto_2
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    if-eqz v2, :cond_3

    .line 930
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 931
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v4

    .line 932
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 933
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    .line 936
    .end local v4    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 938
    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 941
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    if-eqz v0, :cond_5

    .line 942
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v8, :cond_9

    :goto_3
    invoke-virtual {p0, v5, v2, v6}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 943
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 945
    :cond_5
    return-void

    .end local v0    # "changed":Z
    .end local v2    # "isFullscreen":Z
    :cond_6
    move v2, v7

    .line 906
    goto :goto_0

    .restart local v2    # "isFullscreen":Z
    :cond_7
    move v0, v7

    .line 907
    goto :goto_1

    .line 923
    .restart local v0    # "changed":Z
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 924
    const/4 v5, -0x2

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 925
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    move v6, v7

    .line 942
    goto :goto_3
.end method

.method public updateInputViewShown()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1102
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1103
    .local v0, "isShown":Z
    :goto_0
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v3, v0, :cond_0

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v3, :cond_0

    .line 1104
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 1105
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1106
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1107
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1108
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 1109
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1110
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 1114
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void

    .end local v0    # "isShown":Z
    :cond_1
    move v0, v2

    .line 1102
    goto :goto_0

    .line 1105
    .restart local v0    # "isShown":Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method
