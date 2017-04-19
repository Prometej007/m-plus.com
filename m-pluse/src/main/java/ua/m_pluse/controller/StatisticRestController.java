package ua.m_pluse.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ua.m_pluse.service.utils.config.Statistic;

/**
 * @author prometej
 * @version 1.0
 */
@RestController
public class StatisticRestController {

	@RequestMapping(value = "statisticadddownloadarar", method = RequestMethod.POST)
	public @ResponseBody void addDownloadAR() {
		Statistic.downloadPresentationAR++;
	}

	@RequestMapping(value = "statisticadddownloadarsite", method = RequestMethod.POST)
	public @ResponseBody void addDownloadSite() {
		Statistic.downloadPresentationSite++;

	}

	@RequestMapping(value = "messageVR", method = RequestMethod.POST)
	public void messageVR() {
		Statistic.messageVR++;

	}

	@RequestMapping(value = "messageSITE", method = RequestMethod.POST)
	public void messageSite() {
		Statistic.messageSite++;

	}

	@RequestMapping(value = "messageHOME", method = RequestMethod.POST)
	public void messageHOME() {
		Statistic.messageHome++;

	}

}
