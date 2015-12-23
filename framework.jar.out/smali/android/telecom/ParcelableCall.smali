.class public final Landroid/telecom/ParcelableCall;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapabilities:I

.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectTimeMillis:J

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final mHandle:Landroid/net/Uri;

.field private final mHandlePresentation:I

.field private final mId:Ljava/lang/String;

.field private final mParentCallId:Ljava/lang/String;

.field private final mProperties:I

.field private final mState:I

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mUserData:Landroid/os/Bundle;

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;

.field private final mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I

.field private final mVideoStateHistory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 384
    new-instance v0, Landroid/telecom/ParcelableCall$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCall$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;IILjava/util/List;Landroid/os/Bundle;ILandroid/os/Bundle;)V
    .locals 25
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "capabilities"    # I
    .param p6, "properties"    # I
    .param p7, "connectTimeMillis"    # J
    .param p9, "handle"    # Landroid/net/Uri;
    .param p10, "handlePresentation"    # I
    .param p11, "callerDisplayName"    # Ljava/lang/String;
    .param p12, "callerDisplayNamePresentation"    # I
    .param p13, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p14, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p15, "videoCallProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p16, "parentCallId"    # Ljava/lang/String;
    .param p18, "statusHints"    # Landroid/telecom/StatusHints;
    .param p19, "videoState"    # I
    .param p20, "videoStateHistory"    # I
    .param p22, "extras"    # Landroid/os/Bundle;
    .param p23, "callSubstate"    # I
    .param p24, "userdata"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    .local p4, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p17, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p21, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p24

    invoke-direct/range {v1 .. v24}, Landroid/telecom/ParcelableCall;-><init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;IILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;IILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "capabilities"    # I
    .param p6, "properties"    # I
    .param p7, "connectTimeMillis"    # J
    .param p9, "handle"    # Landroid/net/Uri;
    .param p10, "handlePresentation"    # I
    .param p11, "callerDisplayName"    # Ljava/lang/String;
    .param p12, "callerDisplayNamePresentation"    # I
    .param p13, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p14, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p15, "videoCallProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p16, "parentCallId"    # Ljava/lang/String;
    .param p18, "statusHints"    # Landroid/telecom/StatusHints;
    .param p19, "videoState"    # I
    .param p20, "videoStateHistory"    # I
    .param p22, "extras"    # Landroid/os/Bundle;
    .param p23, "userdata"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p4, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p17, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p21, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    .line 133
    iput p2, p0, Landroid/telecom/ParcelableCall;->mState:I

    .line 134
    iput-object p3, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 135
    iput-object p4, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    .line 136
    iput p5, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    .line 137
    iput p6, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    .line 138
    iput-wide p7, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    .line 139
    iput-object p9, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    .line 140
    iput p10, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    .line 141
    iput-object p11, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    .line 142
    iput p12, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    .line 143
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 144
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 145
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 146
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p17

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    .line 148
    move-object/from16 v0, p18

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    .line 149
    move/from16 v0, p19

    iput v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    .line 150
    move/from16 v0, p20

    iput v0, p0, Landroid/telecom/ParcelableCall;->mVideoStateHistory:I

    .line 151
    invoke-static/range {p21 .. p21}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    .line 152
    move-object/from16 v0, p22

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    .line 153
    move-object/from16 v0, p23

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mUserData:Landroid/os/Bundle;

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "capabilities"    # I
    .param p6, "properties"    # I
    .param p7, "connectTimeMillis"    # J
    .param p9, "handle"    # Landroid/net/Uri;
    .param p10, "handlePresentation"    # I
    .param p11, "callerDisplayName"    # Ljava/lang/String;
    .param p12, "callerDisplayNamePresentation"    # I
    .param p13, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p14, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p15, "videoCallProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p16, "parentCallId"    # Ljava/lang/String;
    .param p18, "statusHints"    # Landroid/telecom/StatusHints;
    .param p19, "videoState"    # I
    .param p21, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p4, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p17, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p20, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    .line 82
    iput p2, p0, Landroid/telecom/ParcelableCall;->mState:I

    .line 83
    iput-object p3, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 84
    iput-object p4, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    .line 85
    iput p5, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    .line 86
    iput p6, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    .line 87
    iput-wide p7, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    .line 88
    iput-object p9, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    .line 89
    iput p10, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    .line 90
    iput-object p11, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    .line 91
    iput p12, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    .line 92
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 93
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 94
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 95
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p17

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    .line 97
    move-object/from16 v0, p18

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    .line 98
    move/from16 v0, p19

    iput v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Landroid/telecom/ParcelableCall;->mVideoStateHistory:I

    .line 100
    invoke-static/range {p20 .. p20}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    .line 101
    move-object/from16 v0, p21

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    .line 102
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/telecom/ParcelableCall;->mUserData:Landroid/os/Bundle;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "capabilities"    # I
    .param p6, "properties"    # I
    .param p7, "connectTimeMillis"    # J
    .param p9, "handle"    # Landroid/net/Uri;
    .param p10, "handlePresentation"    # I
    .param p11, "callerDisplayName"    # Ljava/lang/String;
    .param p12, "callerDisplayNamePresentation"    # I
    .param p13, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p14, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p15, "videoCallProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p16, "parentCallId"    # Ljava/lang/String;
    .param p18, "statusHints"    # Landroid/telecom/StatusHints;
    .param p19, "videoState"    # I
    .param p21, "extras"    # Landroid/os/Bundle;
    .param p22, "callSubstate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p4, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p17, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p20, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p21}, Landroid/telecom/ParcelableCall;-><init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;)V

    .line 191
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    return v0
.end method

.method public getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getConferenceableCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_0

    .line 310
    :try_start_0
    new-instance v0, Landroid/telecom/VideoCallImpl;

    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-direct {v0, v1}, Landroid/telecom/VideoCallImpl;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/InCallService$VideoCall;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-object v0

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    return v0
.end method

.method public getVideoStateHistory()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoStateHistory:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 481
    const-string v0, "[%s, parent:%s, children:%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 454
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 457
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 458
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 461
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 462
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 466
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 467
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 469
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 471
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 472
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoStateHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 475
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 476
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mUserData:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 477
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
