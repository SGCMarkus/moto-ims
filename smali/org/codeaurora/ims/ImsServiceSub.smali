.class public Lorg/codeaurora/ims/ImsServiceSub;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "ImsServiceSub.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
.implements Lorg/codeaurora/ims/ICallListListener;
.implements Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;
.implements Lorg/codeaurora/ims/ImsRegistrationController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;,
        Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;,
        Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;
    }
.end annotation


# static fields
.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final INVALID_CALL_TYPE:I = -0x2

.field private static final INVALID_RAT_VALUE:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSub"

.field private static sTaskExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final ACTION_DISABLE_C_IWLAN_NOTIFICATION:Ljava/lang/String;

.field private final C_IWLAN_NOTIFICATION_PACKAGE_NAME:Ljava/lang/String;

.field private final C_IWLAN_NOTIFICATION_PHONE_ID:Ljava/lang/String;

.field private final C_IWLAN_NOTIFICATION_RECEIVER:Ljava/lang/String;

.field private final C_IWLAN_NOTIFICATION_STATUS:Ljava/lang/String;

.field private final EVENT_CALL_AUTO_REJECT:I

.field private final EVENT_CALL_MODIFY:I

.field private final EVENT_CALL_STATE_CHANGE:I

.field private final EVENT_CANCEL_MODIFY_CALL:I

.field private final EVENT_CIWLAN_NOTIFICATION:I

.field private final EVENT_EXIT_SCBM:I

.field private final EVENT_GEOLOCATION_INFO_REQUEST:I

.field private final EVENT_GEOLOCATION_RESPONSE:I

.field private final EVENT_GET_CALL_BARRING_DONE:I

.field private final EVENT_GET_CALL_FORWARD_DONE:I

.field private final EVENT_GET_CALL_FORWARD_TIMER:I

.field private final EVENT_GET_CURRENT_CALLS:I

.field private final EVENT_GET_HANDOVER_CONFIG:I

.field private final EVENT_GET_SRV_STATUS:I

.field private final EVENT_GET_VOLTE_PREF:I

.field private final EVENT_HANDOVER_STATE_CHANGED:I

.field private final EVENT_MWI:I

.field private final EVENT_PARTICIPANT_STATUS_INFO:I

.field private final EVENT_PRE_ALERTING_INFO:I

.field private final EVENT_SEND_AUTO_REJECT:I

.field private final EVENT_SEND_UI_TTY_MODE:I

.field private final EVENT_SET_CALL_FORWARD_TIMER:I

.field private final EVENT_SET_HANDOVER_CONFIG:I

.field private final EVENT_SET_IMS_STATE:I

.field private final EVENT_SET_MEDIA_CONFIG:I

.field private final EVENT_SET_SRV_STATUS:I

.field private final EVENT_SET_VOLTE_PREF:I

.field private final EVENT_SMS_CALLBACK_MODE_CHANGED:I

.field private final EVENT_SRV_STATUS_UPDATE:I

.field private final EVENT_SSAC_CHANGED:I

.field private final EVENT_SSAC_RESPONSE:I

.field private final EVENT_SUPP_SRV_UPDATE:I

.field private final EVENT_TTY_STATE_CHANGED:I

.field private final EVENT_USSD_MESSAGE_RECEIVED:I

.field private final EVENT_VOPS_CHANGED:I

.field private final EVENT_VOPS_RESPONSE:I

.field private final EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

.field private final EVENT_WFC_ROAMING_CONFIGURATION:I

.field private final SSAC_VOICE_BARRING_ZERO:I

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

.field private mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfController:Lorg/codeaurora/ims/ImsConferenceController;

.field private mContext:Landroid/content/Context;

.field private mCrsCrbtController:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

.field private mCrsCrbtLock:Ljava/lang/Object;

.field private mDataChannelCapabilityListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

.field private mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

.field private mFeatureCallbackHandler:Landroid/os/Handler;

.field private mFeatureHandlerThread:Landroid/os/HandlerThread;

.field private mFeatureIsOpen:Z

.field private mHandler:Landroid/os/Handler;

.field private mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

.field private mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

.field private mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

.field private mImsRat:I

.field private mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

.field private mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

.field private mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

.field private mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

.field private mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

.field private mIsSsacVoiceBarred:Z

.field private mIsVopsEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mModemSupportForWfcRoamingConfiguration:Z

.field private mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

.field private mMultiIdentityLock:Ljava/lang/Object;

.field private mMwiResponse:Lorg/codeaurora/ims/Mwi;

.field protected mPhoneId:I

.field private mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryingServiceStatus:Z

.field private mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

.field private mScreenShareLock:Ljava/lang/Object;

.field private mSubController:Lorg/codeaurora/ims/ImsSubController;

.field private mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCapabilityCallback(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueryingServiceStatus(Lorg/codeaurora/ims/ImsServiceSub;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmQueryingServiceStatus(Lorg/codeaurora/ims/ImsServiceSub;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCallsListToClear(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallsListToClear()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetImsInterfaceListener(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleCallAutoReject(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCallAutoReject(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCalls(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCalls(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCancelModifyCallResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCancelModifyCallResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCiWlanNotification(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCiWlanNotification(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGeolocationRequest(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationRequest(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGeolocationResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHandover(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleHandover(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleModifyCallRequest(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMwiNotification(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleMwiNotification(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePreAlertingCallInfo(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handlePreAlertingCallInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleQueryVoltePrefResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleQueryVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSmsCallbackModeChanged(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSmsCallbackModeChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSrvStatusUpdate(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSsac(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsac(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSsacResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSuppSvc(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSuppSvc(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTtyModeChange(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleTtyModeChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateVoltePrefResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleUpdateVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUssdReceived(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleUssdReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVoWiFiCallQuality(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVoWiFiCallQuality(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVops(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVops(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVopsResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWfcRoamingConfiguration(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleWfcRoamingConfiguration(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitServiceStatus(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misImsExceptionRadioNotAvailable(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogd(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloge(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogi(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monExitScbmDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onExitScbmDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetCallBarringReqDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetCallBarringReqDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetCallForwardReqDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetCallForwardReqDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetCallForwardTimerDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetHandoverConfigDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetCallForwardTimerDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetHandoverConfigDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I
    .locals 0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 147
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsServiceSub;->sTaskExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "subController"    # Lorg/codeaurora/ims/ImsSubController;

    .line 296
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 122
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    .line 123
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 124
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 133
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 134
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 135
    iput v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->SSAC_VOICE_BARRING_ZERO:I

    .line 136
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    .line 150
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 154
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    .line 160
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityLock:Ljava/lang/Object;

    .line 161
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareLock:Ljava/lang/Object;

    .line 162
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCrsCrbtLock:Ljava/lang/Object;

    .line 164
    const/4 v2, 0x1

    iput v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_STATE_CHANGE:I

    .line 165
    const/4 v3, 0x4

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRV_STATUS_UPDATE:I

    .line 166
    const/4 v3, 0x5

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_SRV_STATUS:I

    .line 167
    const/4 v3, 0x6

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_SRV_STATUS:I

    .line 168
    const/4 v3, 0x7

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CURRENT_CALLS:I

    .line 169
    const/16 v3, 0x8

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SUPP_SRV_UPDATE:I

    .line 170
    const/16 v3, 0x9

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_IMS_STATE:I

    .line 171
    const/16 v3, 0xa

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_TTY_STATE_CHANGED:I

    .line 173
    const/16 v3, 0xc

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_HANDOVER_STATE_CHANGED:I

    .line 174
    const/16 v3, 0xd

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_MODIFY:I

    .line 175
    const/16 v3, 0xe

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_MWI:I

    .line 176
    const/16 v3, 0x10

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_CALL_FORWARD_TIMER:I

    .line 177
    const/16 v3, 0x11

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CALL_FORWARD_TIMER:I

    .line 178
    const/16 v3, 0x12

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CALL_FORWARD_DONE:I

    .line 179
    const/16 v3, 0x13

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CALL_BARRING_DONE:I

    .line 180
    const/16 v3, 0x15

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_INFO_REQUEST:I

    .line 181
    const/16 v3, 0x16

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_RESPONSE:I

    .line 182
    const/16 v3, 0x17

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

    .line 183
    const/16 v3, 0x19

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_CHANGED:I

    .line 184
    const/16 v3, 0x1a

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_CHANGED:I

    .line 185
    const/16 v3, 0x1b

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_RESPONSE:I

    .line 186
    const/16 v3, 0x1c

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_RESPONSE:I

    .line 187
    const/16 v3, 0x1d

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_PARTICIPANT_STATUS_INFO:I

    .line 188
    const/16 v3, 0x1e

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_VOLTE_PREF:I

    .line 189
    const/16 v3, 0x1f

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_VOLTE_PREF:I

    .line 190
    const/16 v3, 0x20

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_HANDOVER_CONFIG:I

    .line 191
    const/16 v3, 0x21

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_HANDOVER_CONFIG:I

    .line 192
    const/16 v3, 0x23

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CANCEL_MODIFY_CALL:I

    .line 193
    const/16 v3, 0x24

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_AUTO_REJECT:I

    .line 194
    const/16 v3, 0x25

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_WFC_ROAMING_CONFIGURATION:I

    .line 195
    const/16 v3, 0x26

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_USSD_MESSAGE_RECEIVED:I

    .line 196
    const/16 v3, 0x27

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SEND_AUTO_REJECT:I

    .line 197
    const/16 v3, 0x28

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SEND_UI_TTY_MODE:I

    .line 198
    const/16 v3, 0x29

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_PRE_ALERTING_INFO:I

    .line 199
    const/16 v3, 0x2a

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SMS_CALLBACK_MODE_CHANGED:I

    .line 200
    const/16 v3, 0x2b

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_MEDIA_CONFIG:I

    .line 201
    const/16 v3, 0x2c

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_EXIT_SCBM:I

    .line 202
    const/16 v3, 0x2d

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CIWLAN_NOTIFICATION:I

    .line 211
    const/4 v3, -0x1

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 212
    new-instance v4, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v4, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 213
    new-instance v4, Lorg/codeaurora/ims/CapabilityTracker;

    invoke-direct {v4}, Lorg/codeaurora/ims/CapabilityTracker;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    .line 216
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 217
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDataChannelCapabilityListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 219
    new-instance v0, Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-direct {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mLock:Ljava/lang/Object;

    .line 221
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    .line 224
    const-string v0, "com.qti.phone.action.ACTION_DISABLE_C_IWLAN_NOTIFICATION"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->ACTION_DISABLE_C_IWLAN_NOTIFICATION:Ljava/lang/String;

    .line 226
    const-string v0, "com.android.phone"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->C_IWLAN_NOTIFICATION_PACKAGE_NAME:Ljava/lang/String;

    .line 227
    const-string v0, "com.android.phone.CiWlanNotificationReceiver"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->C_IWLAN_NOTIFICATION_RECEIVER:Ljava/lang/String;

    .line 229
    const-string v0, "C_IWLAN_NOTIFICATION_STATUS"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->C_IWLAN_NOTIFICATION_STATUS:Ljava/lang/String;

    .line 230
    const-string v0, "C_IWLAN_NOTIFICATION_PHONE_ID"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->C_IWLAN_NOTIFICATION_PHONE_ID:Ljava/lang/String;

    .line 292
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    .line 297
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V

    .line 298
    iput p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 299
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 300
    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 301
    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] Constructor :: Registering with Sub Controller."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 304
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 306
    new-instance v0, Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsRegistrationImpl;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    .line 307
    new-instance v0, Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p0, v2}, Lorg/codeaurora/ims/ImsEcbmImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 309
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 311
    new-instance v0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3, p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 313
    new-instance v0, Lorg/codeaurora/ims/ImsSmsImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, v2, v3, v4}, Lorg/codeaurora/ims/ImsSmsImpl;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

    .line 314
    new-instance v0, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 315
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    .line 317
    new-instance v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {v0, p0, v2, v3}, Lorg/codeaurora/ims/ImsServiceStateReceiver;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 318
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual {v2, v1, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 325
    new-instance v1, Lorg/codeaurora/ims/ImsRegistrationController;

    invoke-direct {v1, p3, p1}, Lorg/codeaurora/ims/ImsRegistrationController;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    .line 326
    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsRegistrationController;->addListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V

    .line 327
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FeatureHandlerThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    .line 328
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 329
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    .line 330
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v1, p0, p2}, Lorg/codeaurora/ims/ImsSubController;->registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;I)V

    .line 331
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->registerForImsEvents()V

    .line 332
    return-void
.end method

.method private broadcastCiWlanNotificationIntent(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 2413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastCiWlanNotificationIntent show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 2414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qti.phone.action.ACTION_DISABLE_C_IWLAN_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2415
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "C_IWLAN_NOTIFICATION_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2416
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const-string v2, "C_IWLAN_NOTIFICATION_PHONE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2417
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CiWlanNotificationReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2419
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2420
    return-void
.end method

.method private broadcastSmsCallbackModeIntent(I)V
    .locals 4
    .param p1, "smsCallbackMode"    # I

    .line 2402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.SMS_CALLBACK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2404
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2405
    .local v1, "mode":Z
    :goto_0
    sget-object v2, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_SMS_CALLBACK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2406
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const-string v3, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastSmsCallbackModeIntent mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2409
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string v3, "com.qti.permission.RECEIVE_SMS_CALLBACK_MODE"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2410
    return-void
.end method

.method private broadcastVopsSsacIntent()V
    .locals 3

    .line 2157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2158
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    const-string v2, "Vops"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2159
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    const-string v2, "Ssac"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2160
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const-string v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastVopsSsacIntent Vops = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Ssac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , PhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2164
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2165
    return-void
.end method

.method private canAddCapability(III)Z
    .locals 5
    .param p1, "capability"    # I
    .param p2, "status"    # I
    .param p3, "registrationTech"    # I

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canAddCapability capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , registrationTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImsRat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 1125
    const/4 v0, 0x0

    const/4 v1, -0x2

    if-eq p1, v1, :cond_7

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    goto :goto_1

    .line 1131
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    if-eq p3, v3, :cond_2

    .line 1134
    return v0

    .line 1138
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canAddCapability status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 1139
    const/16 v3, 0x8

    if-ne p1, v3, :cond_4

    .line 1140
    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1141
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isSmsSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    nop

    .line 1140
    :goto_0
    return v0

    .line 1144
    :cond_4
    if-eq p2, v1, :cond_5

    if-ne p2, v2, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    return v0

    .line 1127
    :cond_7
    :goto_1
    return v0
.end method

.method private static canChangeCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z
    .locals 4
    .param p0, "cp"    # Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 912
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 913
    return v0

    .line 915
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    .line 916
    .local v1, "capability":I
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 929
    return v0

    .line 927
    :pswitch_0
    if-ne v1, v3, :cond_1

    move v0, v3

    :cond_1
    return v0

    .line 918
    :pswitch_1
    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 923
    :cond_2
    return v0

    .line 921
    :cond_3
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private deregisterForImsEvents()V
    .locals 2

    .line 425
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->deregisterForPreAlertingCallInfo(Landroid/os/Handler;)V

    .line 426
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForUssdInfo(Landroid/os/Handler;)V

    .line 427
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 428
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSrvStatusUpdate(Landroid/os/Handler;)V

    .line 429
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 430
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForHandoverStatusChanged(Landroid/os/Handler;)V

    .line 431
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForGeolocationRequest(Landroid/os/Handler;)V

    .line 432
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForVopsStatusChanged(Landroid/os/Handler;)V

    .line 433
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSsacStatusChanged(Landroid/os/Handler;)V

    .line 434
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForParticipantStatusInfo(Landroid/os/Handler;)V

    .line 435
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForCallAutoRejection(Landroid/os/Handler;)V

    .line 436
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V

    .line 437
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unRegisterForWfcRoamingModeFeatureSupport(Landroid/os/Handler;)V

    .line 438
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 439
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForMwi(Landroid/os/Handler;)V

    .line 440
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForTtyStatusChanged(Landroid/os/Handler;)V

    .line 441
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForModifyCall(Landroid/os/Handler;)V

    .line 442
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSmsCallbackModeChanged(Landroid/os/Handler;)V

    .line 443
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForCiwlanNotification(Landroid/os/Handler;)V

    .line 444
    return-void
.end method

.method private getCallsListToClear()Ljava/lang/Object;
    .locals 2

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "mmTelCallsList":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallsListToClear()Ljava/lang/Object;

    move-result-object v0

    .line 578
    :cond_0
    return-object v0
.end method

.method private getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2016
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-object v0

    .line 2019
    :cond_0
    const-string v0, "getImsInterfaceListener returns null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2020
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIncomingOrWaitingCallSession()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 2474
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 2475
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 2476
    .local v0, "session":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2477
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 2479
    :cond_0
    return-object v0
.end method

.method private static getOperationStatus(Z)I
    .locals 1
    .param p0, "status"    # Z

    .line 1735
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1736
    :cond_0
    const/4 v0, 0x1

    .line 1735
    :goto_0
    return v0
.end method

.method private getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2257
    const/4 v0, 0x0

    .line 2258
    .local v0, "status":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2260
    const/4 v0, 0x1

    .line 2262
    :cond_0
    return v0
.end method

.method private static getSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I
    .locals 3
    .param p0, "reason"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 873
    const/4 v0, -0x1

    .line 874
    .local v0, "error":I
    sget-object v1, Lorg/codeaurora/ims/ImsServiceSub$1;->$SwitchMap$org$codeaurora$ims$ImsConfigImpl$SetCapabilityFailCause:[I

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 879
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 876
    :pswitch_1
    const/4 v0, -0x1

    .line 877
    nop

    .line 881
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1740
    invoke-static {p1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 1741
    .local v0, "err":Landroid/telephony/ims/ImsReasonInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    :goto_0
    return v1
.end method

.method private handleCallAutoReject(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2334
    if-eqz p1, :cond_5

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2339
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/DriverCallIms;

    .line 2340
    .local v0, "rejectedCall":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-nez v1, :cond_1

    .line 2341
    const-string v1, "handleCallAutoReject :: No call details in DriverCallIms"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2342
    return-void

    .line 2344
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2345
    .local v1, "extras":Landroid/os/Bundle;
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2346
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    const-string v3, "oi"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    :cond_2
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const-string v3, "phoneId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2350
    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v2

    .line 2351
    .local v2, "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
    if-eqz v2, :cond_3

    .line 2352
    invoke-static {v2}, Lorg/codeaurora/ims/utils/CallComposerInfoUtils;->toBundle(Lorg/codeaurora/ims/CallComposerInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 2353
    .local v3, "ccBundle":Landroid/os/Bundle;
    sget-object v4, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_COMPOSER_INFO:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2356
    .end local v3    # "ccBundle":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v3

    .line 2357
    .local v3, "ecnamInfo":Lorg/codeaurora/ims/EcnamInfo;
    if-eqz v3, :cond_4

    .line 2358
    invoke-virtual {v3}, Lorg/codeaurora/ims/EcnamInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 2359
    .local v4, "ecnamBundle":Landroid/os/Bundle;
    sget-object v5, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_ECNAM:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2362
    .end local v4    # "ecnamBundle":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getIsDcCall()Z

    move-result v4

    const-string v5, "isDcCall"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2363
    new-instance v4, Lorg/codeaurora/ims/QImsCallProfile;

    const/4 v5, 0x1

    iget-object v6, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2365
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    invoke-direct {v4, v5, v6, v1, v7}, Lorg/codeaurora/ims/QImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2368
    .local v4, "rejCallProfile":Lorg/codeaurora/ims/QImsCallProfile;
    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v5

    .line 2369
    .local v5, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    invoke-static {v5, v4}, Lorg/codeaurora/ims/ImsCallUtils;->toImsCallProfile(Lorg/codeaurora/ims/VerstatInfo;Lorg/codeaurora/ims/QImsCallProfile;)Lorg/codeaurora/ims/QImsCallProfile;

    move-result-object v4

    .line 2371
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCallAutoReject :: rejCallProfile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ImsReasonInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " extras: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2375
    :try_start_0
    invoke-virtual {v4}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    iget-object v7, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v6, v7}, Lorg/codeaurora/ims/ImsServiceSub;->notifyRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2378
    goto :goto_0

    .line 2376
    :catch_0
    move-exception v6

    .line 2377
    .local v6, "e":Ljava/lang/IllegalStateException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCallAutoReject error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2380
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 2335
    .end local v0    # "rejectedCall":Lorg/codeaurora/ims/DriverCallIms;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
    .end local v3    # "ecnamInfo":Lorg/codeaurora/ims/EcnamInfo;
    .end local v4    # "rejCallProfile":Lorg/codeaurora/ims/QImsCallProfile;
    .end local v5    # "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    :cond_5
    :goto_1
    const-string v0, "handleCallAutoReject :: Error parsing DriverCallIms"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2336
    return-void
.end method

.method private handleCalls(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1316
    const-string v0, ">handleCalls"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1319
    .local v0, "dcList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1320
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .local v1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_0

    .line 1321
    .end local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_0
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .restart local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v2, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    if-eqz v1, :cond_1

    .line 1334
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/DriverCallIms;

    .line 1335
    .local v4, "dc":Lorg/codeaurora/ims/DriverCallIms;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCalls: dc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    .end local v4    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_1

    .line 1340
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v3, :cond_2

    .line 1341
    const-string v3, "handleCalls :: Null mTracker!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1344
    :cond_2
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 1346
    :goto_2
    return-void

    .line 1328
    .end local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v2    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_3
    return-void
.end method

.method private handleCancelModifyCallResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1919
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 1922
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    const/4 v1, 0x0

    .line 1923
    .local v1, "nStatus":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1925
    const/4 v1, 0x1

    .line 1926
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "Cancel upgrade failed"

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1928
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCancelModifyCallResponse: Result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1931
    if-eqz v0, :cond_1

    .line 1933
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCancelModifyCallResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1934
    :catchall_0
    move-exception v2

    .line 1935
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "handleCancelModifyCallResponse exception!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1936
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1938
    :cond_1
    const-string v2, "handleCancelModifyCallResponse: no listener is available"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1940
    :goto_1
    return-void
.end method

.method private handleCiWlanNotification(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2392
    const-string v0, "handleCiWlanNotification"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 2393
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2397
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastCiWlanNotificationIntent(Z)V

    .line 2398
    return-void

    .line 2394
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_CIWLAN_NOTIFICATION AsyncResult ar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2395
    return-void
.end method

.method private handleGeolocationRequest(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1952
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/GeoLocationInfo;

    .line 1953
    .local v0, "geoInfo":Lorg/codeaurora/ims/GeoLocationInfo;
    if-nez v0, :cond_0

    .line 1954
    const-string v1, "handleGeolocationRequest :: Null AsyncResult!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1955
    return-void

    .line 1958
    :cond_0
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsServiceSub;->sTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;

    .line 1959
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLat()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLon()D

    move-result-wide v6

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;-><init>(Lorg/codeaurora/ims/ImsServiceSub;DD)V

    .line 1958
    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    goto :goto_0

    .line 1960
    :catch_0
    move-exception v1

    .line 1961
    .local v1, "rex":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGeolocationRequest :: Failure to start GeocoderTask thread for [lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1962
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLat()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | long="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1963
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLon()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1961
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1964
    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    .line 1966
    .end local v1    # "rex":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private handleGeolocationResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1943
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1944
    const-string v0, "handleGeolocationResponse :: Error response!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1949
    :cond_0
    return-void
.end method

.method private handleHandover(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1353
    const-string v0, "handleHandover"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1355
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/HoInfo;

    .line 1356
    .local v0, "handover":Lorg/codeaurora/ims/HoInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1357
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleHandover(Lorg/codeaurora/ims/HoInfo;)V

    .line 1359
    .end local v0    # "handover":Lorg/codeaurora/ims/HoInfo;
    :cond_0
    goto :goto_0

    .line 1361
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult exception in handleHandover- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1363
    :goto_0
    return-void
.end method

.method private handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallModifyRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 1464
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    .line 1466
    :cond_0
    return-void
.end method

.method private handleMwiNotification(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2024
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2025
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2026
    .local v0, "arMwiUpdate":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 2027
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2028
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/Mwi;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 2029
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoiceMail()V

    goto :goto_0

    .line 2031
    :cond_0
    const-string v1, "handleMwiNotification arMwiUpdate.result null"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2034
    :cond_1
    const-string v1, "handleMwiNotification arMwiUpdate exception"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2036
    .end local v0    # "arMwiUpdate":Lorg/codeaurora/telephony/utils/AsyncResult;
    :goto_0
    goto :goto_1

    .line 2037
    :cond_2
    const-string v0, "handleMwiNotification msg null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2039
    :goto_1
    return-void
.end method

.method private handlePreAlertingCallInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2144
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2145
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/PreAlertingCallInfo;

    .line 2146
    .local v0, "info":Lorg/codeaurora/ims/PreAlertingCallInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2147
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->onPreAlertingCallDataAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V

    goto :goto_0

    .line 2149
    :cond_0
    const-string v1, "handlePreAlertingCallInfo: Tracker and PreAlertingCallInfo are null."

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2151
    .end local v0    # "info":Lorg/codeaurora/ims/PreAlertingCallInfo;
    :goto_0
    goto :goto_1

    .line 2152
    :cond_1
    const-string v0, "handlePreAlertingCallInfo exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2154
    :goto_1
    return-void
.end method

.method private handleQueryVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2283
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2284
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v1

    .line 2285
    .local v1, "result":I
    const/4 v2, 0x2

    .line 2286
    .local v2, "preference":I
    if-nez v1, :cond_0

    .line 2288
    iget-object v3, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 2289
    .local v3, "pref":[I
    const/4 v4, 0x0

    aget v2, v3, v4

    .line 2291
    .end local v3    # "pref":[I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryVoltePrefResponse: result-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2294
    if-eqz v0, :cond_1

    .line 2296
    :try_start_0
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v3, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceQueried(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2297
    :catchall_0
    move-exception v3

    .line 2298
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "handleQueryVoltePrefResponse exception!"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2299
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 2301
    :cond_1
    const-string v3, "handleQueryVoltePrefResponse: no listener is available"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2303
    :goto_1
    return-void
.end method

.method private handleSmsCallbackModeChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2383
    const-string v0, "handleSmsCallbackModeChanged"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2384
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2388
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastSmsCallbackModeIntent(I)V

    .line 2389
    return-void

    .line 2385
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_SMS_CALLBACK_MODE_CHANGED AsyncResult ar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2386
    return-void
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .line 939
    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 940
    .local v1, "isVideoEnabled":Z
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityTracker;->clone()Lorg/codeaurora/ims/CapabilityTracker;

    move-result-object v2

    .line 941
    .local v2, "tmpCT":Lorg/codeaurora/ims/CapabilityTracker;
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetCapabilities()V

    .line 942
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ServiceStatus;

    .line 943
    .local v4, "update":Lorg/codeaurora/ims/ServiceStatus;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " isValid = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v4, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 945
    if-eqz v4, :cond_10

    iget-boolean v5, v4, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    if-eqz v5, :cond_10

    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-direct {v0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->isSrvTypeValid(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 946
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    .line 947
    .local v5, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    iget-boolean v7, v4, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    iput-boolean v7, v5, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 948
    iget v7, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iput v7, v5, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 949
    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    if-eqz v7, :cond_0

    .line 950
    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v7, v7

    new-array v7, v7, [B

    iput-object v7, v5, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 951
    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v8, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    iput-object v7, v5, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 953
    :cond_0
    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v7, :cond_10

    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v7, v7

    if-lez v7, :cond_10

    .line 954
    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v7, v7

    new-array v7, v7, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v7, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 956
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Call Type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "has num updates = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 958
    iget-object v7, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 960
    .local v7, "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v9, v9

    if-ge v8, v9, :cond_10

    .line 961
    iget-object v9, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v9, v9, v8

    .line 963
    .local v9, "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StatusForAccessTech networkMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " registered = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " restrictCause = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 968
    new-instance v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v10}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v10, v7, v8

    .line 969
    aget-object v10, v7, v8

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v11, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 970
    aget-object v10, v7, v8

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v11, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 971
    iget v10, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v10, v11, :cond_1

    iget v10, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v10, :cond_1

    .line 973
    aget-object v10, v7, v8

    iput v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto :goto_2

    .line 975
    :cond_1
    aget-object v10, v7, v8

    iget v13, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v13, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 977
    :goto_2
    aget-object v10, v7, v8

    iget v10, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v10, v5, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 978
    aget-object v10, v7, v8

    iget v13, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v13, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 979
    aget-object v10, v7, v8

    iget v10, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-static {v10}, Lorg/codeaurora/ims/ImsServiceSub;->mapToImsRegistrationTech(I)I

    move-result v10

    .line 980
    .local v10, "registrationTech":I
    iget v13, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-static {v13}, Lorg/codeaurora/ims/ImsServiceSub;->mapToMmTelCapability(I)I

    move-result v13

    .line 981
    .local v13, "capability":I
    aget-object v14, v7, v8

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-direct {v0, v13, v14, v10}, Lorg/codeaurora/ims/ImsServiceSub;->canAddCapability(III)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 982
    iget-object v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v11, v13, v10}, Lorg/codeaurora/ims/CapabilityTracker;->addCapability(II)V

    goto/16 :goto_7

    .line 983
    :cond_2
    iget v14, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v15, 0x1a

    const/16 v16, 0x0

    const/4 v11, -0x1

    if-ne v14, v15, :cond_5

    if-eq v10, v11, :cond_5

    .line 988
    aget-object v11, v7, v8

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eq v11, v12, :cond_4

    aget-object v11, v7, v8

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v12, v16

    :cond_4
    :goto_3
    move v11, v12

    .line 991
    .local v11, "status":Z
    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v12, v11}, Lorg/codeaurora/ims/CapabilityTracker;->setIsCallComposerSupported(Z)V

    .line 992
    .end local v11    # "status":Z
    goto/16 :goto_7

    :cond_5
    iget v14, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v15, 0x1b

    if-ne v14, v15, :cond_8

    if-eq v10, v11, :cond_8

    .line 997
    aget-object v11, v7, v8

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eq v11, v12, :cond_7

    aget-object v11, v7, v8

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v12, v16

    :cond_7
    :goto_4
    move v11, v12

    .line 1000
    .restart local v11    # "status":Z
    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v12, v11}, Lorg/codeaurora/ims/CapabilityTracker;->setIsUssdSupported(Z)V

    .line 1001
    .end local v11    # "status":Z
    goto :goto_7

    :cond_8
    iget v14, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v15, 0x1c

    if-ne v14, v15, :cond_b

    if-eq v10, v11, :cond_b

    .line 1006
    aget-object v11, v7, v8

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eq v11, v12, :cond_a

    aget-object v11, v7, v8

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v12, v16

    :cond_a
    :goto_5
    move v11, v12

    .line 1009
    .restart local v11    # "status":Z
    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v12, v11}, Lorg/codeaurora/ims/CapabilityTracker;->setIsDataChannelSupported(Z)V

    .line 1010
    invoke-direct {v0, v11}, Lorg/codeaurora/ims/ImsServiceSub;->notifyDataChannelCapability(Z)V

    .end local v11    # "status":Z
    goto :goto_6

    .line 1012
    :cond_b
    if-eq v13, v12, :cond_c

    const/4 v12, 0x2

    if-ne v13, v12, :cond_e

    :cond_c
    if-eq v10, v11, :cond_e

    iget v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    if-eq v10, v11, :cond_e

    .line 1020
    invoke-virtual {v2, v13}, Lorg/codeaurora/ims/CapabilityTracker;->isSupported(I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1023
    iget v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    invoke-virtual {v2, v13, v11}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1024
    iget-object v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    iget v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    invoke-virtual {v11, v13, v12}, Lorg/codeaurora/ims/CapabilityTracker;->addCapability(II)V

    goto :goto_7

    .line 1027
    :cond_d
    invoke-virtual {v2, v13, v10}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1028
    iget-object v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v11, v13, v10}, Lorg/codeaurora/ims/CapabilityTracker;->addCapability(II)V

    goto :goto_7

    .line 1012
    :cond_e
    :goto_6
    nop

    .line 960
    .end local v9    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v10    # "registrationTech":I
    .end local v13    # "capability":I
    :cond_f
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1036
    .end local v4    # "update":Lorg/codeaurora/ims/ServiceStatus;
    .end local v5    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    .end local v7    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v8    # "i":I
    :cond_10
    goto/16 :goto_0

    .line 1038
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSrvStatusUpdate ::  Call Composer updated to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1039
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isCallComposerSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " USSD capability updated to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isUssdSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IMS Data Channel updated to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1041
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isDataChannelSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1038
    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 1043
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityTracker;->getEnabledCapabilities()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 1044
    .local v4, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 1045
    .end local v4    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_8

    .line 1047
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSrvStatusUpdate :: mMmtelCapabilities updated to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 1049
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 1051
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v3, :cond_13

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    goto :goto_9

    .line 1054
    :cond_13
    const-string v3, "handleSrvStatusUpdate :: tracker null; not updating global VT capability"

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1067
    :goto_9
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v3, :cond_14

    .line 1068
    new-instance v3, Landroid/util/Pair;

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1070
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v5, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v6}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 1071
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    goto :goto_a

    .line 1072
    :cond_14
    const-string v3, "handleSrvStatusUpdate :: mCapabilitiesChangedRegistrants null"

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1074
    :goto_a
    return-void
.end method

.method private handleSsac(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2097
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2098
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SsacInfo;

    .line 2100
    .local v0, "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSsac voice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 2102
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    .line 2103
    .end local v0    # "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    goto :goto_1

    .line 2104
    :cond_1
    const-string v0, "handleSsac exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2106
    :goto_1
    return-void
.end method

.method private handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2197
    if-eqz p2, :cond_2

    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2198
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SsacInfo;

    .line 2200
    .local v0, "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSsacResponse voice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 2203
    if-eqz p1, :cond_1

    .line 2205
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifySsacStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    goto :goto_1

    .line 2206
    :catch_0
    move-exception v1

    .line 2207
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2210
    .end local v0    # "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto :goto_2

    .line 2211
    :cond_2
    const-string v0, "handleSsacResponse exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2213
    :goto_2
    return-void
.end method

.method private handleSuppSvc(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1371
    const-string v0, "handleSuppSvc"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1372
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1373
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    .line 1374
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1375
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    .line 1377
    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/SuppNotifyInfo;
    :cond_0
    goto :goto_0

    .line 1379
    :cond_1
    const-string v0, "AsyncResult exception in handleSuppSvc."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1381
    :goto_0
    return-void
.end method

.method private handleTtyModeChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1388
    const-string v0, "handleTtyModeChange"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1389
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1390
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1391
    .local v0, "mode":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EVENT_TTY_STATE_CHANGED mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1392
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1393
    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleTtyModeChangeUnsol(I)V

    .line 1395
    .end local v0    # "mode":[I
    :cond_0
    goto :goto_0

    .line 1396
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_TTY_STATE_CHANGED AsyncResult ar= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1398
    :goto_0
    return-void
.end method

.method private handleUpdateVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2266
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2267
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v1

    .line 2268
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateVoltePrefResponse: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2271
    if-eqz v0, :cond_0

    .line 2273
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceUpdated(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2274
    :catchall_0
    move-exception v2

    .line 2275
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "handleUpdateVoltePrefResponse exception!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2276
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 2278
    :cond_0
    const-string v2, "handleUpdateVoltePrefResponse: no listener is available"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2280
    :goto_1
    return-void
.end method

.method private handleUssdReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2124
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2129
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/UssdInfo;

    .line 2132
    .local v0, "info":Lorg/codeaurora/ims/UssdInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2134
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getType()I

    move-result v3

    .line 2135
    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getErrorCode()I

    move-result v4

    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    .line 2134
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUssdFailed(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2138
    goto :goto_0

    .line 2136
    :catch_0
    move-exception v1

    .line 2137
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "handleUssd exception!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2140
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->onUssdMessageReceived(Lorg/codeaurora/ims/UssdInfo;)V

    .line 2141
    return-void

    .line 2125
    .end local v0    # "info":Lorg/codeaurora/ims/UssdInfo;
    :cond_2
    :goto_1
    const-string v0, "handleUssdReceived invalid info"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2126
    return-void
.end method

.method private handleVoWiFiCallQuality(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2062
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2063
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 2064
    .local v0, "voWifiCallQuality":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    if-eqz v2, :cond_1

    .line 2065
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v2, :cond_0

    .line 2066
    aget v1, v0, v1

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVoWiFiCallQuality(I)V

    goto :goto_0

    .line 2068
    :cond_0
    const-string v1, "Wifi Quality Error -- tracker is null"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2071
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoWiFiCallQuality received VoWiFIQuality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2074
    .end local v0    # "voWifiCallQuality":[I
    :goto_0
    goto :goto_1

    .line 2075
    :cond_2
    const-string v0, "handleVoWiFiCallQuality response is not valid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2077
    :goto_1
    return-void
.end method

.method private handleVops(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2088
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2090
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    goto :goto_0

    .line 2092
    :cond_0
    const-string v0, "handleVops exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2094
    :goto_0
    return-void
.end method

.method private handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2178
    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2179
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/VopsInfo;

    .line 2181
    .local v0, "vops":Lorg/codeaurora/ims/VopsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/VopsInfo;->isVopsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vops Response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2184
    if-eqz p1, :cond_0

    .line 2186
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-interface {p1, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyVopsStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2189
    goto :goto_0

    .line 2187
    :catch_0
    move-exception v1

    .line 2188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2191
    .end local v0    # "vops":Lorg/codeaurora/ims/VopsInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 2192
    :cond_1
    const-string v0, "handleVopsResponse exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2194
    :goto_1
    return-void
.end method

.method private handleWfcRoamingConfiguration(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2109
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    goto :goto_0

    .line 2112
    :cond_0
    const-string v0, "handleWfcRoamingConfiguration exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2114
    :goto_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    if-eqz v0, :cond_1

    .line 2115
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWfcModeConfigurationsToModem()V

    .line 2117
    :cond_1
    return-void
.end method

.method private initServiceStatus()V
    .locals 3

    .line 556
    new-instance v0, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    .line 561
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 562
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 563
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v0, v2

    const/16 v1, 0xe

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 564
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v0, v2

    const/4 v1, 0x3

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 565
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v0, v2

    const/4 v2, 0x2

    iput v2, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 566
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 567
    return-void
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1304
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/RuntimeException;

    .line 1306
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1307
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1306
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1304
    :goto_0
    return v0
.end method

.method private isSrvTypeValid(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 895
    sparse-switch p1, :sswitch_data_0

    .line 907
    const/4 v0, 0x0

    return v0

    .line 905
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic lambda$onSessionAdded$5(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0
    .param p0, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 463
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 464
    return-void
.end method

.method static synthetic lambda$onSessionRemoved$6(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0
    .param p0, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 470
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 471
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSub"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSub"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSub"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSub"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2515
    return-void
.end method

.method private static mapToImsRegistrationTech(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 1081
    sparse-switch p0, :sswitch_data_0

    .line 1092
    const/4 v0, -0x1

    return v0

    .line 1090
    :sswitch_0
    const/4 v0, 0x2

    return v0

    .line 1084
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 1088
    :sswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0xe -> :sswitch_2
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method private static mapToMmTelCapability(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 1101
    sparse-switch p0, :sswitch_data_0

    .line 1113
    const/4 v0, -0x2

    return v0

    .line 1105
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 1111
    :sswitch_1
    const/16 v0, 0x8

    return v0

    .line 1109
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 1103
    :sswitch_3
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method private maybeUpdateMediaConfiguration()V
    .locals 6

    .line 529
    const-string v0, "maybeUpdateMediaConfiguration."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 531
    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isSendMediaConfigurationSupported(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 535
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 536
    const-string v0, "Stack is not ready."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 537
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/ims/utils/DisplayUtils;->getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 541
    .local v0, "screenSize":Landroid/graphics/Point;
    nop

    .line 542
    const-string v1, "video/avc"

    invoke-static {v1}, Lcom/qualcomm/ims/utils/MediaCodecUtils;->getVideoDecoderMaxSupportedDimension(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 544
    .local v1, "avcSize":Landroid/graphics/Point;
    nop

    .line 545
    const-string v2, "video/hevc"

    invoke-static {v2}, Lcom/qualcomm/ims/utils/MediaCodecUtils;->getVideoDecoderMaxSupportedDimension(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    .line 546
    .local v2, "hevcSize":Landroid/graphics/Point;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    goto :goto_0

    .line 550
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2b

    .line 551
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 550
    invoke-virtual {v3, v0, v1, v2, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->setMediaConfigurationRequest(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/os/Message;)V

    .line 552
    return-void

    .line 547
    :cond_3
    :goto_0
    const-string v3, "maybeUpdateMediaConfiguration :: Invalid media size!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 548
    return-void

    .line 532
    .end local v0    # "screenSize":Landroid/graphics/Point;
    .end local v1    # "avcSize":Landroid/graphics/Point;
    .end local v2    # "hevcSize":Landroid/graphics/Point;
    :cond_4
    :goto_1
    const-string v0, "Feature is not supported or carrier config is not ready."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method private notifyDataChannelCapability(Z)V
    .locals 2
    .param p1, "dcCapability"    # Z

    .line 2423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataChannelCapability dcCapability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDataChannelCapabilityListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v0, :cond_0

    .line 2426
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyDataChannelCapability(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2429
    goto :goto_0

    .line 2427
    :catch_0
    move-exception v0

    .line 2428
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2431
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyFeatureCapabilityChange()V
    .locals 3

    .line 761
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 762
    .local v0, "c":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 763
    new-instance v2, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda5;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    :cond_0
    return-void
.end method

.method private onExitScbmDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1908
    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    .line 1912
    :cond_0
    :try_start_0
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onScbmExited(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1915
    goto :goto_1

    .line 1913
    :catchall_0
    move-exception v0

    .line 1914
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitScbmDone exception!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1916
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 1909
    :cond_2
    :goto_2
    return-void
.end method

.method private onGetCallBarringReqDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1869
    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 1872
    :cond_0
    :try_start_0
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1873
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v2

    invoke-interface {p1, v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V

    .line 1874
    return-void

    .line 1877
    :cond_1
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    const/16 v2, 0x324

    if-nez v0, :cond_2

    .line 1878
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V

    .line 1879
    return-void

    .line 1882
    :cond_2
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1883
    .local v0, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v0}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1885
    .local v3, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-nez v3, :cond_5

    invoke-virtual {v0}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    .line 1886
    invoke-virtual {v0}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_0

    .line 1891
    :cond_3
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 1892
    .local v2, "ret":[I
    const/4 v4, 0x0

    aput v4, v2, v4

    .line 1894
    const-string v5, "onGetCallBarringReqDone successful response! "

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {v0}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 1897
    aput v1, v2, v4

    .line 1899
    :cond_4
    invoke-interface {p1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->queryCallBarringResponse([I)V

    .line 1903
    .end local v0    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v2    # "ret":[I
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_1

    .line 1887
    .restart local v0    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .restart local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :cond_5
    :goto_0
    iget v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v4, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1888
    return-void

    .line 1901
    .end local v0    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :catchall_0
    move-exception v0

    .line 1902
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCallBarringReqDone exception!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1904
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 1870
    :cond_6
    :goto_2
    return-void
.end method

.method private onGetCallForwardReqDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1835
    :try_start_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getUt()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    .line 1836
    .local v0, "utImpl":Lorg/codeaurora/ims/ImsUtImpl;
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_0

    .line 1839
    :cond_0
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1840
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v3

    invoke-interface {p1, v1, v3, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V

    .line 1841
    return-void

    .line 1844
    :cond_1
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    const/16 v3, 0x324

    if-nez v1, :cond_2

    .line 1845
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v1, v3, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V

    .line 1846
    return-void

    .line 1849
    :cond_2
    const-string v1, "onGetCallForwardReqDone successful response! "

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1850
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1852
    .local v1, "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    nop

    .line 1853
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->toImsCallForwardInfo([Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v4

    .line 1855
    .local v4, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-nez v4, :cond_3

    .line 1856
    iget v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v5, v3, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V

    .line 1857
    return-void

    .line 1860
    :cond_3
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v2, v4}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->queryCallForwardStatusResponse(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    .end local v0    # "utImpl":Lorg/codeaurora/ims/ImsUtImpl;
    .end local v1    # "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .end local v4    # "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_1

    .line 1837
    .restart local v0    # "utImpl":Lorg/codeaurora/ims/ImsUtImpl;
    :cond_4
    :goto_0
    return-void

    .line 1862
    .end local v0    # "utImpl":Lorg/codeaurora/ims/ImsUtImpl;
    :catchall_0
    move-exception v0

    .line 1863
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCallForwardReqDone exception!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1865
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 22
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1782
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    const/4 v2, 0x0

    .line 1783
    .local v2, "startHour":I
    const/4 v3, 0x0

    .line 1784
    .local v3, "endHour":I
    const/4 v4, 0x0

    .line 1785
    .local v4, "startMinute":I
    const/4 v5, 0x0

    .line 1786
    .local v5, "endMinute":I
    const/4 v6, 0x0

    .line 1787
    .local v6, "reason":I
    const/4 v7, 0x0

    .line 1788
    .local v7, "status":I
    const/4 v8, 0x0

    .line 1789
    .local v8, "number":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1791
    .local v9, "serviceClass":I
    iget-object v0, v13, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v10, 0x0

    const-string v11, "onUTReqFailed exception!"

    if-eqz v0, :cond_0

    .line 1792
    const-string v0, "get CF Timer error!"

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1794
    :try_start_0
    iget v0, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {v1, v13}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v14

    invoke-interface {v12, v0, v14, v10}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    goto :goto_0

    .line 1795
    :catchall_0
    move-exception v0

    .line 1796
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1798
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1800
    :cond_0
    iget-object v0, v13, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1801
    const-string v0, "onGetCallForwardTimerDone ImsCallForwardTimerInfo instance! "

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1802
    iget-object v0, v13, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1803
    .local v0, "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v15, v0

    if-ge v14, v15, :cond_1

    .line 1804
    aget-object v15, v0, v14

    iget v2, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1805
    aget-object v15, v0, v14

    iget v3, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1806
    aget-object v15, v0, v14

    iget v4, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1807
    aget-object v15, v0, v14

    iget v5, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 1808
    aget-object v15, v0, v14

    iget v6, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1809
    aget-object v15, v0, v14

    iget v7, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1810
    aget-object v15, v0, v14

    iget-object v8, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1811
    aget-object v15, v0, v14

    iget v9, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 1803
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    goto :goto_2

    .line 1800
    .end local v0    # "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .end local v14    # "i":I
    :cond_2
    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    .line 1815
    .end local v2    # "startHour":I
    .end local v3    # "endHour":I
    .end local v4    # "startMinute":I
    .end local v5    # "endMinute":I
    .end local v6    # "reason":I
    .end local v7    # "status":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "serviceClass":I
    .local v14, "startHour":I
    .local v15, "endHour":I
    .local v16, "startMinute":I
    .local v17, "endMinute":I
    .local v18, "reason":I
    .local v19, "status":I
    .local v20, "number":Ljava/lang/String;
    .local v21, "serviceClass":I
    :goto_2
    if-eqz v12, :cond_4

    .line 1816
    if-nez v18, :cond_3

    .line 1818
    :try_start_1
    iget v3, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    move-object/from16 v2, p1

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v10, v20

    move/from16 v11, v21

    invoke-interface/range {v2 .. v11}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetCallForwardUncondTimer(IIIIIIILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 1820
    :catchall_1
    move-exception v0

    .line 1821
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onGetCallForwardTimerDone exception!"

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1822
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3
    goto :goto_4

    .line 1825
    :cond_3
    :try_start_2
    iget v0, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {v1, v13}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v2

    invoke-interface {v12, v0, v2, v10}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1828
    goto :goto_4

    .line 1826
    :catchall_2
    move-exception v0

    .line 1827
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1831
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_4
    return-void
.end method

.method private onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2306
    if-eqz p1, :cond_2

    .line 2308
    :try_start_0
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2309
    move v0, v1

    goto :goto_0

    .line 2310
    :cond_0
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    nop

    .line 2311
    .local v0, "result":I
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v3, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v1

    invoke-interface {p1, v2, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetHandoverConfig(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":I
    goto :goto_1

    .line 2313
    :catchall_0
    move-exception v0

    .line 2314
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetHandoverConfigDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2315
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 2317
    :cond_2
    const-string v0, "onGetHandoverConfigDone listener is not valid !!!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2319
    :goto_2
    return-void
.end method

.method private onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 8
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1745
    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 1749
    :cond_0
    const/4 v0, 0x0

    .line 1751
    .local v0, "status":I
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 1752
    const-string v1, "set CF Timer error!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1753
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 1754
    .local v1, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/codeaurora/ims/CallForwardStatusInfo;->getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    goto :goto_0

    .line 1755
    :cond_1
    move-object v3, v2

    :goto_0
    nop

    .line 1756
    .local v3, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 1757
    .local v4, "failCause":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetCallForwardTimerDone Failure cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1758
    const-string v5, "onUTReqFailed exception!"

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1760
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v6

    invoke-interface {p1, v2, v6, v4}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1761
    :catchall_0
    move-exception v2

    .line 1762
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1763
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 1766
    :cond_3
    :try_start_1
    iget v6, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v7

    invoke-interface {p1, v6, v7, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1769
    goto :goto_3

    .line 1767
    :catchall_1
    move-exception v2

    .line 1768
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1771
    .end local v1    # "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v4    # "failCause":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 1772
    :cond_4
    const-string v1, "set CF Timer success!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1774
    :try_start_2
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetCallForwardUncondTimer(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1777
    goto :goto_4

    .line 1775
    :catchall_2
    move-exception v1

    .line 1776
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetCallForwardTimerDone exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1779
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_4
    return-void

    .line 1746
    .end local v0    # "status":I
    :cond_5
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCallForwardTimerDone: listener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AsyncResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1747
    return-void
.end method

.method private onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2322
    if-eqz p1, :cond_1

    .line 2324
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetHandoverConfig(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2325
    :catchall_0
    move-exception v0

    .line 2326
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetHandoverConfigDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2327
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 2329
    :cond_1
    const-string v0, "onSetHandoverConfigDone listener is not valid !!!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2331
    :goto_2
    return-void
.end method

.method private registerForImsEvents()V
    .locals 5

    .line 338
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x15

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x19

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1a

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1d

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x24

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallAutoRejection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x26

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForUssdInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x17

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x29

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForPreAlertingCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x25

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForWfcRoamingModeFeatureSupport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 360
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2a

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSmsCallbackModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2d

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCiwlanNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    .line 363
    return-void
.end method

.method private resetCapabilities()V
    .locals 2

    .line 934
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->clear()V

    .line 935
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 936
    return-void
.end method

.method private sendBroadcastForDisconnected(ILandroid/telephony/ims/ImsReasonInfo;I)V
    .locals 3
    .param p1, "imsRat"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "regState"    # I

    .line 1479
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1481
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1482
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1483
    const-string v1, "stateChanged"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1484
    const-string v1, "imsRat"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1485
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1486
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastForDisconnected: imsRat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1488
    return-void
.end method

.method private updateVoiceMail()V
    .locals 4

    .line 2042
    const/4 v0, 0x0

    .line 2043
    .local v0, "count":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v1, v1, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    .line 2044
    .local v2, "msgSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    iget v3, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    if-nez v3, :cond_0

    .line 2045
    iget v1, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    add-int/2addr v1, v0

    iget v3, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    add-int v0, v1, v3

    .line 2047
    goto :goto_1

    .line 2049
    .end local v2    # "msgSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    :cond_0
    goto :goto_0

    .line 2052
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVoiceMail count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyVoiceMessageCountUpdate(I)V

    .line 2055
    return-void
.end method


# virtual methods
.method public IsWfcRoamingConfigurationSupportedByModem()Z
    .locals 1

    .line 2120
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    return v0
.end method

.method public addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 1432
    if-eqz p1, :cond_1

    .line 1436
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1437
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1439
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener error: Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1441
    :goto_0
    return-void

    .line 1433
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 10
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 795
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 800
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    .line 801
    .local v0, "capsToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v1

    .line 802
    .local v1, "capsToDisable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    const-string v2, "changeEnabledCapabilities :: No CapabilityPair objects to process!"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 804
    return-void

    .line 810
    :cond_1
    new-instance v2, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 811
    new-instance v2, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 814
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 816
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v2, "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 818
    .local v4, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-static {v4}, Lorg/codeaurora/ims/ImsServiceSub;->canChangeCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 819
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeEnabledCapabilities :: ignoring unsupported enable capability request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 821
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v7

    .line 822
    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v8

    .line 821
    invoke-virtual {v6, v7, v8, v5}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    .line 823
    goto :goto_0

    .line 825
    :cond_2
    new-instance v5, Lorg/codeaurora/ims/CapabilityStatus;

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v6

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v7

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lorg/codeaurora/ims/CapabilityStatus;-><init>(III)V

    .line 827
    .local v5, "cs":Lorg/codeaurora/ims/CapabilityStatus;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v4    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v5    # "cs":Lorg/codeaurora/ims/CapabilityStatus;
    goto :goto_0

    .line 830
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 831
    .restart local v4    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-static {v4}, Lorg/codeaurora/ims/ImsServiceSub;->canChangeCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeEnabledCapabilities :: ignoring unsupported disable capability request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 834
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v7

    .line 835
    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v8

    .line 834
    invoke-virtual {v6, v7, v8, v5}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    .line 836
    goto :goto_1

    .line 838
    :cond_4
    new-instance v6, Lorg/codeaurora/ims/CapabilityStatus;

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v7

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/codeaurora/ims/CapabilityStatus;-><init>(III)V

    .line 840
    .local v6, "cs":Lorg/codeaurora/ims/CapabilityStatus;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    .end local v4    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v6    # "cs":Lorg/codeaurora/ims/CapabilityStatus;
    goto :goto_1

    .line 844
    :cond_5
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v4, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener-IA;)V

    invoke-virtual {v3, v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilityValue(Ljava/util/ArrayList;Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;)V

    .line 846
    return-void

    .line 796
    .end local v0    # "capsToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    .end local v1    # "capsToDisable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    .end local v2    # "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    :cond_6
    :goto_2
    const-string v0, "changeEnabledCapabilities :: Invalid argument(s)."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 640
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 641
    const-string v0, "createCallProfile :: Null ImsServiceClassTracker!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 642
    const/4 v0, 0x0

    return-object v0

    .line 646
    :cond_0
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 647
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    return-object v0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "session":Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v1, :cond_0

    .line 659
    const-string v1, "createCallSession :: Null ImsServiceClassTracker!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v0

    .line 663
    :goto_0
    return-object v0
.end method

.method public dispose()V
    .locals 4

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V

    .line 384
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 387
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    .line 388
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    .line 390
    :cond_0
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 391
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 393
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 395
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 397
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConferenceController;->dispose()V

    .line 399
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 401
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    if-eqz v0, :cond_3

    .line 402
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->dispose()V

    .line 404
    :cond_3
    const/4 v0, 0x0

    .line 405
    .local v0, "utImpl":Lorg/codeaurora/ims/ImsUtImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 406
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    move-object v0, v3

    .line 407
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    if-eqz v0, :cond_4

    .line 409
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsUtImpl;->close()V

    .line 411
    :cond_4
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    .line 412
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    if-eqz v2, :cond_5

    .line 413
    invoke-virtual {v2, p0}, Lorg/codeaurora/ims/ImsRegistrationController;->removeListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V

    .line 414
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsRegistrationController;->dispose()V

    .line 415
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    .line 417
    :cond_5
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsSubController;->unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)Z

    .line 418
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->deregisterForImsEvents()V

    .line 419
    return-void

    .line 407
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exitScbm(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1291
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->exitScbm(Landroid/os/Message;)V

    .line 1292
    return-void
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .line 1415
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardUncondTimer reason is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1196
    const/16 v2, 0x11

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1195
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1197
    return-void
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codeaurora/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;
    .locals 1

    .line 720
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    return-object v0
.end method

.method public getCrsCrbtController()Lorg/codeaurora/ims/CrsCrbtControllerImpl;
    .locals 3

    .line 2462
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCrsCrbtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2463
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCrsCrbtController:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isCrsSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2464
    new-instance v1, Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCrsCrbtController:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    .line 2466
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2467
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCrsCrbtController:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    return-object v0

    .line 2466
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1

    .line 729
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    return-object v0
.end method

.method public getFeatureIsOpen()Z
    .locals 1

    .line 1506
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1496
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1281
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getHandoverConfig(Landroid/os/Message;)V

    .line 1283
    return-void
.end method

.method public getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;
    .locals 1

    .line 1491
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    return-object v0
.end method

.method public getImsFeatureState()I
    .locals 1

    .line 2470
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    return v0
.end method

.method public getImsRegistrationInterface()Lorg/codeaurora/ims/ImsRegistrationImpl;
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    return-object v0
.end method

.method public getImsServiceClassTracker()Lorg/codeaurora/ims/ImsServiceClassTracker;
    .locals 1

    .line 1501
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    return-object v0
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    .line 2439
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    return-object v0
.end method

.method public getMultiIdentityImpl()Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .locals 6

    .line 2443
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2444
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    if-nez v1, :cond_0

    .line 2445
    new-instance v1, Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 2446
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;-><init>(ILorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 2448
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2449
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    return-object v0

    .line 2448
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPhoneId()I
    .locals 1

    .line 1422
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    return v0
.end method

.method public getScreenShareController()Lorg/codeaurora/ims/ImsScreenShareControllerImpl;
    .locals 3

    .line 2453
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2454
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    if-nez v1, :cond_0

    .line 2455
    new-instance v1, Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsScreenShareControllerImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    .line 2457
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2458
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    return-object v0

    .line 2457
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSelfIdentityUri()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 2505
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsRegistrationController;->getSelfIdentityUri()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 1

    .line 694
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

    return-object v0
.end method

.method public bridge synthetic getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getUt()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public getUt()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 5

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "utImpl":Lorg/codeaurora/ims/ImsUtImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-eqz v2, :cond_0

    .line 706
    monitor-exit v1

    return-object v2

    .line 708
    :cond_0
    new-instance v2, Lorg/codeaurora/ims/ImsUtImpl;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4}, Lorg/codeaurora/ims/ImsUtImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    move-object v0, v2

    .line 709
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl;->setOnClosedListener(Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;)V

    .line 711
    return-object v0

    .line 709
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public handleParticipantStatusInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2221
    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 2222
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    .line 2224
    .local v0, "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_2

    .line 2225
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 2230
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleParticipantStatusInfo operation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getOperation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2231
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getSipStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " participant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2232
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getParticipantUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getIsEct()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2230
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2233
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2235
    .local v2, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :try_start_0
    iget v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 2236
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getOperation()I

    move-result v5

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getSipStatus()I

    move-result v6

    .line 2237
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getParticipantUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getIsEct()Z

    move-result v8

    .line 2235
    move-object v3, v2

    invoke-interface/range {v3 .. v8}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyParticipantStatusInfo(IIILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2240
    goto :goto_1

    .line 2238
    :catch_0
    move-exception v3

    .line 2239
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2241
    .end local v2    # "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 2242
    .end local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_1
    goto :goto_4

    .line 2226
    .restart local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "participant listeners size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isTrackerPresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2228
    return-void

    .line 2243
    .end local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_4
    const-string v0, "ParticipantStatusInfo exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2245
    :goto_4
    return-void
.end method

.method public isCallComposerSupported()Z
    .locals 1

    .line 1165
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isCallComposerSupported()Z

    move-result v0

    return v0
.end method

.method public isDataChannelSupported()Z
    .locals 1

    .line 1173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isDataChannelSupported()Z

    move-result v0

    return v0
.end method

.method public isExitScbmFeatureSupported()Z
    .locals 2

    .line 1295
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isUssdSupported()Z
    .locals 1

    .line 1169
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isUssdSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoSupported()Z
    .locals 1

    .line 1149
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isVideoSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 1

    .line 1157
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isVideoSupportedOverWifi()Z

    move-result v0

    return v0
.end method

.method public isVoiceSupported()Z
    .locals 1

    .line 1153
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isVoiceSupported()Z

    move-result v0

    return v0
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 1

    .line 1161
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isVoiceSupportedOverWifi()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$notifyFeatureCapabilityChange$7$org-codeaurora-ims-ImsServiceSub(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureCapabilityChange :: Capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 766
    return-void
.end method

.method synthetic lambda$onDeregistered$2$org-codeaurora-ims-ImsServiceSub(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 273
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method synthetic lambda$onRegistered$0$org-codeaurora-ims-ImsServiceSub(I)V
    .locals 1
    .param p1, "imsRadioTech"    # I

    .line 244
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registeredWithRadioTech(I)V

    return-void
.end method

.method synthetic lambda$onRegistering$1$org-codeaurora-ims-ImsServiceSub(I)V
    .locals 1
    .param p1, "imsRadioTech"    # I

    .line 259
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registeringWithRadioTech(I)V

    return-void
.end method

.method synthetic lambda$onSubscriberAssociatedUriChanged$4$org-codeaurora-ims-ImsServiceSub([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 289
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method synthetic lambda$onTechnologyChangeFailed$3$org-codeaurora-ims-ImsServiceSub(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 281
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onCarrierConfigChanged()V
    .locals 1

    .line 890
    const-string v0, "onCarrierConfigChanged"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 891
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->maybeUpdateMediaConfiguration()V

    .line 892
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/ImsUtImpl;)V
    .locals 3
    .param p1, "obj"    # Lorg/codeaurora/ims/ImsUtImpl;

    .line 2493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notified that ImsUtImpl is closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 2494
    const/4 v0, 0x0

    .line 2495
    .local v0, "utImpl":Lorg/codeaurora/ims/ImsUtImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2496
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    move-object v0, v2

    .line 2497
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    .line 2498
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2499
    if-eqz v0, :cond_0

    .line 2500
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->setOnClosedListener(Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;)V

    .line 2502
    :cond_0
    return-void

    .line 2498
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 2
    .param p1, "registrationState"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 266
    if-eqz p4, :cond_0

    .line 267
    nop

    .line 268
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v0

    .line 267
    invoke-direct {p0, v0, p2, p1}, Lorg/codeaurora/ims/ImsServiceSub;->sendBroadcastForDisconnected(ILandroid/telephony/ims/ImsReasonInfo;I)V

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 272
    new-instance v1, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda2;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    :cond_1
    return-void
.end method

.method public onFeatureReady()V
    .locals 4

    .line 588
    const-string v0, "onFeatureReady"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 591
    const-string v0, "onFeatureReady :: creating ImsServiceClassTracker"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 592
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 593
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    .line 594
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->closeAllSessions()V

    .line 600
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-nez v0, :cond_1

    .line 601
    const-string v0, "onFeatureReady :: creating ImsConferenceController"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 602
    new-instance v0, Lorg/codeaurora/ims/ImsConferenceController;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsConferenceController;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    goto :goto_1

    .line 604
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConferenceController;->cleanupConferenceAttempt()V

    .line 607
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 608
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsRegistrationController;->requestImsRegistrationState()V

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 612
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 1

    .line 616
    const-string v0, "onFeatureRemoved"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 618
    return-void
.end method

.method onIccLoaded()V
    .locals 1

    .line 885
    const-string v0, "onIccLoaded..."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 886
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 887
    return-void
.end method

.method public onRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 4
    .param p1, "registrationState"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 235
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v0

    .line 236
    .local v0, "imsRat":I
    invoke-static {p3}, Lorg/codeaurora/ims/ImsServiceSub;->mapToImsRegistrationTech(I)I

    move-result v1

    iput v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    .line 237
    if-eqz p4, :cond_0

    .line 238
    invoke-direct {p0, v0, p2, p1}, Lorg/codeaurora/ims/ImsServiceSub;->sendBroadcastForDisconnected(ILandroid/telephony/ims/ImsReasonInfo;I)V

    .line 240
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 241
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    .line 242
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 243
    new-instance v2, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p3}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda7;-><init>(Lorg/codeaurora/ims/ImsServiceSub;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    :cond_1
    return-void
.end method

.method public onRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 4
    .param p1, "registrationState"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 251
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v0

    .line 252
    .local v0, "imsRat":I
    if-eqz p4, :cond_0

    .line 253
    invoke-direct {p0, v0, p2, p1}, Lorg/codeaurora/ims/ImsServiceSub;->sendBroadcastForDisconnected(ILandroid/telephony/ims/ImsReasonInfo;I)V

    .line 255
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    .line 257
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 258
    new-instance v2, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsServiceSub;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    :cond_1
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 448
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 449
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 450
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 2
    .param p1, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 462
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    new-instance v1, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda1;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 465
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 455
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 456
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 457
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 2
    .param p1, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 469
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    new-instance v1, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 472
    return-void
.end method

.method public onStackConfigChanged([ZI)V
    .locals 11
    .param p1, "activeStacks"    # [Z
    .param p2, "phoneId"    # I

    .line 480
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubController;->isDsdv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "onStackConfigChanged safely ignore the indication"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 482
    return-void

    .line 486
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStackConfigChanged :: activeStacks["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 488
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    aget-boolean v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 489
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 490
    .local v0, "featureState":I
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v1

    .line 491
    .local v1, "oldFeatureState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldFeatureState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 492
    if-ne v1, v2, :cond_3

    if-nez v0, :cond_3

    .line 494
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetCapabilities()V

    .line 496
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 499
    .local v2, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    invoke-virtual {v4, v2}, Lorg/codeaurora/ims/ImsRegistrationController;->reset(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 501
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    if-eqz v4, :cond_2

    .line 502
    invoke-virtual {v4, v3, v3}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    goto :goto_2

    .line 504
    :cond_2
    const-string v3, "onStackConfigChanged :: mImsServiceStateReceiver null"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 506
    .end local v2    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_3
    if-eq v1, v2, :cond_5

    if-ne v0, v2, :cond_5

    .line 512
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsSubController;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 513
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 512
    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getAutoRejectMode(Landroid/content/ContentResolver;I)I

    move-result v3

    move v6, v3

    goto :goto_1

    .line 514
    :cond_4
    move v6, v3

    :goto_1
    nop

    .line 515
    .local v6, "mode":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v3, 0x2c

    const/16 v4, 0x4a

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x27

    .line 518
    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 515
    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 519
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->maybeUpdateMediaConfiguration()V

    goto :goto_3

    .line 506
    .end local v6    # "mode":I
    :cond_5
    :goto_2
    nop

    .line 522
    :goto_3
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v0    # "featureState":I
    .end local v1    # "oldFeatureState":I
    goto :goto_4

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "onStackConfigChanged :: Invalid activeStacks length!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 526
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 287
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 288
    new-instance v1, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda4;-><init>(Lorg/codeaurora/ims/ImsServiceSub;[Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :cond_0
    return-void
.end method

.method public onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 279
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda6;-><init>(Lorg/codeaurora/ims/ImsServiceSub;ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    :cond_0
    return-void
.end method

.method public queryCallBarringStatus(ILjava/lang/String;IZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 7
    .param p1, "cbType"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "expectMore"    # Z
    .param p5, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallBarringStatus cbType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getUt()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    .line 1251
    .local v0, "utImpl":Lorg/codeaurora/ims/ImsUtImpl;
    if-eqz v0, :cond_2

    if-nez p5, :cond_0

    goto :goto_1

    .line 1255
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    .line 1257
    invoke-virtual {v1, v2, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1256
    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(IIZLjava/lang/String;Landroid/os/Message;)Z

    move-result v1

    .line 1259
    .local v1, "result":Z
    if-nez v1, :cond_1

    .line 1261
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/16 v3, 0x322

    const/4 v4, 0x0

    invoke-interface {p5, v2, v3, v4}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    goto :goto_0

    .line 1262
    :catchall_0
    move-exception v2

    .line 1263
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUTReqFailed exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1266
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 1252
    .end local v1    # "result":Z
    :cond_2
    :goto_1
    return-void
.end method

.method public queryCallForwardStatus(IIZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "expectMore"    # Z
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForwardStatus reason is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "expectMore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1242
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1243
    const/16 v2, 0x12

    invoke-virtual {v0, v2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1242
    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;Z)V

    .line 1244
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCapabilityConfiguration :: capability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " radioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 749
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 750
    const/4 v0, 0x0

    return v0

    .line 753
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v0

    return v0
.end method

.method public querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2173
    const-string v0, "querySsacStatus"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2174
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->querySsacStatus(Landroid/os/Message;)V

    .line 2175
    return-void
.end method

.method public queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2252
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVoltePref(Landroid/os/Message;)V

    .line 2253
    return-void
.end method

.method public queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2168
    const-string v0, "queryVopsStatus"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2169
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVopsStatus(Landroid/os/Message;)V

    .line 2170
    return-void
.end method

.method public registerForCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2080
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2081
    return-void
.end method

.method public registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2058
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 1450
    if-eqz p1, :cond_1

    .line 1454
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1457
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1459
    :goto_0
    return-void

    .line 1451
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumePendingCall(I)V
    .locals 2
    .param p1, "videoState"    # I

    .line 1270
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1271
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 1273
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    const-string v1, "resumePendingCall: no call is available"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 1275
    return-void

    .line 1277
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->resumePendingCall(I)V

    .line 1278
    return-void
.end method

.method public sendCancelModifyCall(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1201
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1202
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 1204
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1206
    const-string v1, "sendCancelModifyCall: no call is available to cancel modify call"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    if-eqz p1, :cond_0

    .line 1209
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCancelModifyCallResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1211
    :catchall_0
    move-exception v1

    .line 1212
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "sendCancelModifyCall exception!"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1213
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1215
    :cond_0
    const-string v1, "sendCancelModifyCall: no listener is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1219
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1220
    .local v1, "nCallId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCancelModifyCall: call ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1223
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x23

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->cancelModifyCall(Landroid/os/Message;I)V

    .line 1226
    .end local v1    # "nCallId":I
    :goto_1
    return-void
.end method

.method public setAnswerExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2483
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getIncomingOrWaitingCallSession()Ljava/util/List;

    move-result-object v0

    .line 2484
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2485
    const-string v1, "setAnswerExtras: no incoming/waiting call available"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 2486
    return-void

    .line 2488
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setAnswerExtras(Landroid/os/Bundle;)V

    .line 2489
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 13
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1185
    move-object v0, p0

    const-string v1, "setCallForwardUncondTimer"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1186
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1188
    const/16 v3, 0x10

    move-object/from16 v12, p9

    invoke-virtual {v1, v3, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1186
    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 1189
    return-void
.end method

.method public setDataChannelCapabilityListener(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1234
    const-string v0, "setDataChannelCapabilityListener"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 1235
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDataChannelCapabilityListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1236
    return-void
.end method

.method public setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "hoConfig"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1286
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1287
    const/16 v2, 0x21

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1286
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setHandoverConfig(ILandroid/os/Message;)V

    .line 1288
    return-void
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 685
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setUiTTYMode(ILandroid/os/Message;)V

    .line 686
    return-void
.end method

.method public setUssdInfoListener(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1229
    const-string v0, "setUssdInfoListener"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 1230
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1231
    return-void
.end method

.method public turnOffIms()V
    .locals 3

    .line 378
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 379
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 378
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 380
    return-void
.end method

.method public turnOnIms()V
    .locals 3

    .line 369
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 370
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 369
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 371
    return-void
.end method

.method public unregisterForCapabilitiesChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2084
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2085
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .line 1177
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 1178
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateLowBatteryStatus()V

    .line 1180
    :cond_0
    return-void
.end method

.method public updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "preference"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2248
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->updateVoltePref(ILandroid/os/Message;)V

    .line 2249
    return-void
.end method
