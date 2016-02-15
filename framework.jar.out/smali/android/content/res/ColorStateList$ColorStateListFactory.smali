.class Landroid/content/res/ColorStateList$ColorStateListFactory;
.super Landroid/content/res/ConstantState;
.source "ColorStateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ColorStateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorStateListFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState",
        "<",
        "Landroid/content/res/ColorStateList;",
        ">;"
    }
.end annotation


# instance fields
.field final mSrc:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "src"    # Landroid/content/res/ColorStateList;

    .prologue
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    iput-object p1, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    # getter for: Landroid/content/res/ColorStateList;->mChangingConfigurations:I
    invoke-static {v0}, Landroid/content/res/ColorStateList;->access$000(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public newInstance()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList$1;)V

    .local v0, "clone":Landroid/content/res/ColorStateList;
    invoke-virtual {v0, p2}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;->newInstance()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Landroid/content/res/Resources$Theme;

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ColorStateList$ColorStateListFactory;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
