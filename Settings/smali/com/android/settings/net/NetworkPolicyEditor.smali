.class public Lcom/android/settings/net/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# instance fields
.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .locals 1
    .param p1, "policyManager"    # Landroid/net/NetworkPolicyManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method private static buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 15
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v2, -0x1

    .local v2, "cycleDay":I
    const-string v3, "UTC"

    .local v3, "cycleTimezone":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "metered":Z
    :goto_0
    new-instance v0, Landroid/net/NetworkPolicy;

    const/4 v13, 0x1

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0

    .end local v2    # "cycleDay":I
    .end local v3    # "cycleTimezone":Ljava/lang/String;
    .end local v12    # "metered":Z
    :cond_0
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .local v14, "time":Landroid/text/format/Time;
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    iget v2, v14, Landroid/text/format/Time;->monthDay:I

    .restart local v2    # "cycleDay":I
    iget-object v3, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .restart local v3    # "cycleTimezone":Ljava/lang/String;
    const/4 v12, 0x1

    .restart local v12    # "metered":Z
    goto :goto_0
.end method

.method private static buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;
    .locals 5
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    .local v0, "networkId":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "strippedNetworkId":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    iget-object v2, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPolicyCycleDay(Landroid/net/NetworkTemplate;)I
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    .end local v0    # "policy":Landroid/net/NetworkPolicy;
    :goto_0
    return-object v0

    .restart local v0    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    invoke-static {p1}, Lcom/android/settings/net/NetworkPolicyEditor;->buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    goto :goto_0
.end method

.method public getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public read()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    iget-object v6, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v6}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v4

    .local v4, "policies":[Landroid/net/NetworkPolicy;
    const/4 v3, 0x0

    .local v3, "modified":Z
    iget-object v6, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object v0, v4

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    iput-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const/4 v3, 0x1

    :cond_0
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    iput-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    const/4 v3, 0x1

    :cond_1
    iget-object v6, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    :cond_3
    return-void
.end method

.method public setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleDay"    # I
    .param p3, "cycleTimezone"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .local v0, "policy":Landroid/net/NetworkPolicy;
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    iput-object p3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "limitBytes"    # J

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .local v0, "policy":Landroid/net/NetworkPolicy;
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public setPolicyMetered(Landroid/net/NetworkTemplate;Z)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "metered"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, "modified":Z
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .local v1, "policy":Landroid/net/NetworkPolicy;
    if-eqz p2, :cond_4

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/android/settings/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    iget-object v4, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/net/NetworkPolicyEditor;->buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .local v2, "unquoted":Landroid/net/NetworkTemplate;
    invoke-virtual {p0, v2}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .local v3, "unquotedPolicy":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    :cond_2
    return-void

    .end local v2    # "unquoted":Landroid/net/NetworkTemplate;
    .end local v3    # "unquotedPolicy":Landroid/net/NetworkPolicy;
    :cond_3
    iget-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-nez v4, :cond_0

    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_0

    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->metered:Z

    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "warningBytes"    # J

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .local v0, "policy":Landroid/net/NetworkPolicy;
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public write([Landroid/net/NetworkPolicy;)V
    .locals 1
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method public writeAsync()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .local v0, "policies":[Landroid/net/NetworkPolicy;
    new-instance v1, Lcom/android/settings/net/NetworkPolicyEditor$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/net/NetworkPolicyEditor$1;-><init>(Lcom/android/settings/net/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/net/NetworkPolicyEditor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
