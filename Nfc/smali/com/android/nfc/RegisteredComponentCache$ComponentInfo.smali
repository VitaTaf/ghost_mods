.class public Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
.super Ljava/lang/Object;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/RegisteredComponentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentInfo"
.end annotation


# instance fields
.field private isDefault:Z

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field public final techs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;[Ljava/lang/String;)V
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "techs"    # [Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 120
    iput-object p2, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->isDefault:Z

    .line 125
    return-void
.end method


# virtual methods
.method public isDefault()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->isDefault:Z

    return v0
.end method

.method public setDefault(Z)V
    .locals 0
    .param p1, "isDflt"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->isDefault:Z

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "ComponentInfo: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, "out":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    const-string v5, ", techs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 133
    .local v4, "tech":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v4    # "tech":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
