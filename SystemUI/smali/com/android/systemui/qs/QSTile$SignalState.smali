.class public final Lcom/android/systemui/qs/QSTile$SignalState;
.super Lcom/android/systemui/qs/QSTile$State;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignalState"
.end annotation


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public connected:Z

.field public dataActivityIconId:I

.field public dataActivityWideIconId:I

.field public enabled:Z

.field public filter:Z

.field public isOverlayIconWide:Z

.field public mobilePhoneLabel:Ljava/lang/String;

.field public overlayIconId:I

.field public overlayWideIconId:I

.field public roamingIconId:I

.field public simStatusIconId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    .local v1, "o":Lcom/android/systemui/qs/QSTile$SignalState;
    iget-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    if-ne v4, v5, :cond_0

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    iget v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-ne v4, v5, :cond_0

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->simStatusIconId:I

    iget v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->simStatusIconId:I

    if-ne v4, v5, :cond_0

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->roamingIconId:I

    iget v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->roamingIconId:I

    if-ne v4, v5, :cond_0

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayWideIconId:I

    iget v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayWideIconId:I

    if-ne v4, v5, :cond_0

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    iget v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    if-ne v4, v5, :cond_0

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityWideIconId:I

    iget v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityWideIconId:I

    if-ne v4, v5, :cond_0

    iget-object v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v0, v3

    .local v0, "changed":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    iput-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    iput-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    iput-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    iput-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    iget v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    iput v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    iput-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iput-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iget v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->simStatusIconId:I

    iput v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->simStatusIconId:I

    iget v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->roamingIconId:I

    iput v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->roamingIconId:I

    iget v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayWideIconId:I

    iput v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayWideIconId:I

    iget v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    iput v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    iget v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityWideIconId:I

    iput v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityWideIconId:I

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .end local v0    # "changed":Z
    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .local v0, "rt":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",activityIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",activityOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",overlayIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",wideOverlayIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",simStatusIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->simStatusIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",roamingIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->roamingIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",overlayWideIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayWideIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",dataActivityIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",dataActivityWideIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityWideIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",mobilePhoneLabel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
