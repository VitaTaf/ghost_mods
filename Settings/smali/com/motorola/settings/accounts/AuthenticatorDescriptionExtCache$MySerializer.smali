.class Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;
.super Ljava/lang/Object;
.source "AuthenticatorDescriptionExtCache.java"

# interfaces
.implements Landroid/content/pm/XmlSerializerAndParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/XmlSerializerAndParser",
        "<",
        "Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$1;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    const-string v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->newKey(Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v0

    return-object v0
.end method

.method public writeAsXml(Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "item"    # Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    const-string v1, "type"

    iget-object v2, p1, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    invoke-interface {p2, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    return-void
.end method

.method public bridge synthetic writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    check-cast p1, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;->writeAsXml(Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method
